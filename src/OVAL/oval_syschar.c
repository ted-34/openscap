/**
 * @file oval_syschar.c
 * \brief Open Vulnerability and Assessment Language
 *
 * See more details at http://oval.mitre.org/
 */

/*
 * Copyright 2008 Red Hat Inc., Durham, North Carolina.
 * All Rights Reserved.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * Authors:
 *      "David Niemoller" <David.Niemoller@g2-inc.com>
 */


#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "oval_system_characteristics_impl.h"
#include "oval_collection_impl.h"
#include "oval_agent_api_impl.h"

int OVAL_SYSCHAR_DEBUG = 0;

typedef struct oval_syschar {
	oval_syschar_collection_flag_enum flag;
	struct oval_collection *messages;
	struct oval_sysinfo *sysinfo;
	struct oval_object *object;
	struct oval_collection *variable_bindings;
	struct oval_collection *sysdata;
} oval_syschar_t;

int oval_iterator_syschar_has_more(struct oval_iterator_syschar *oc_syschar)
{
	return oval_collection_iterator_has_more((struct oval_iterator *)
						 oc_syschar);
}

struct oval_syschar *oval_iterator_syschar_next(struct oval_iterator_syschar
						*oc_syschar)
{
	return (struct oval_syschar *)
	    oval_collection_iterator_next((struct oval_iterator *)oc_syschar);
}

oval_syschar_collection_flag_enum oval_syschar_flag(struct oval_syschar
						    *syschar)
{
	return ((struct oval_syschar *)syschar)->flag;
}

void set_oval_syschar_flag
	(struct oval_syschar *syschar, oval_syschar_collection_flag_enum flag)
{
	syschar->flag = flag;
}

void set_oval_syschar_object(struct oval_syschar *syschar, struct oval_object *object)
{
	syschar->object = object;
}


struct oval_iterator_message *oval_syschar_messages(struct oval_syschar *syschar)
{
	return (struct oval_iterator_message *)oval_collection_iterator(syschar->
								       messages);
}

void add_oval_syschar_messages(struct oval_syschar *syschar, char *message)
{
	oval_collection_add(syschar->messages, message);
}

struct oval_sysinfo *oval_syschar_sysinfo(struct oval_syschar *syschar)
{
	return ((struct oval_syschar *)syschar)->sysinfo;
}

void set_oval_syschar_sysinfo
	(struct oval_syschar *syschar, struct oval_sysinfo *sysinfo)
{
	syschar->sysinfo = sysinfo;
}

struct oval_object *oval_syschar_object(struct oval_syschar *syschar)
{
	return ((struct oval_syschar *)syschar)->object;
}

struct oval_iterator_variable_binding *oval_syschar_variable_bindings(struct
								      oval_syschar
								      *syschar)
{
	return (struct oval_iterator_variable_binding *)
	    oval_collection_iterator(syschar->variable_bindings);
}

void add_oval_syschar_variable_bindings
	(struct oval_syschar *syschar, struct oval_variable_binding *binding)
{
	oval_collection_add(syschar->variable_bindings, binding);
}

struct oval_iterator_sysdata *oval_syschar_sysdata(struct oval_syschar *syschar)
{
	return (struct oval_iterator_sysdata *)
	    oval_collection_iterator(syschar->sysdata);
}

void add_oval_syschar_sysdata
	(struct oval_syschar *syschar, struct oval_sysdata *sysdata)
{
	oval_collection_add(syschar->sysdata, sysdata);
}

void add_oval_syschar_message
	(struct oval_syschar *syschar, struct oval_message *message)
{
	oval_collection_add(syschar->messages, message);
}

void add_oval_syschar_variable_binding
	(struct oval_syschar *syschar, struct oval_variable_binding *binding)
{
	oval_collection_add(syschar->variable_bindings, binding);
}

struct oval_syschar *oval_syschar_new(struct oval_object *object){
	oval_syschar_t *syschar = (oval_syschar_t*)malloc(sizeof(oval_syschar_t));
	syschar->flag              = SYSCHAR_FLAG_UNKNOWN;
	syschar->object            = object;
	syschar->sysinfo           = NULL;
	syschar->messages          = oval_collection_new();
	syschar->sysdata           = oval_collection_new();
	syschar->variable_bindings = oval_collection_new();
	return syschar;
}

void oval_syschar_free(struct oval_syschar *syschar){
	oval_collection_free_items(syschar->messages, free);
	oval_collection_free_items(syschar->sysdata, (oscap_destruct_func)oval_sysdata_free);
	oval_collection_free_items(syschar->variable_bindings, (oscap_destruct_func)oval_variable_binding_free);
	free(syschar);
}

extern const char* NAMESPACE_OVALSYS;
void _oval_syschar_parse_subtag_consume_message(struct oval_message *message, void* syschar){
	add_oval_syschar_message((struct oval_syschar *)syschar, message);
}
void _oval_syschar_parse_subtag_consume_variable_binding(struct oval_variable_binding *binding, void* syschar){
	add_oval_syschar_variable_binding((struct oval_syschar *)syschar, binding);
}
int _oval_syschar_parse_subtag(
		xmlTextReaderPtr reader,
		struct oval_parser_context *context,
		void *client){
	struct oval_syschar *syschar = client;
	char *tagname   = (char*) xmlTextReaderLocalName(reader);
	char *namespace = (char*) xmlTextReaderNamespaceUri(reader);
	int return_code = 0;
	if(strcmp("message",tagname)==0){
		return_code = oval_message_parse_tag(reader, context, &_oval_syschar_parse_subtag_consume_message, syschar);
	}else if(strcmp("variable_value",tagname)==0){
		return_code = oval_variable_binding_parse_tag
		(reader, context, &_oval_syschar_parse_subtag_consume_variable_binding, syschar);
	}else if(strcmp("reference",tagname)==0){
		char* itemid = (char*) xmlTextReaderGetAttribute(reader, BAD_CAST "item_ref");
		struct oval_sysdata *sysdata = get_oval_sysdata_new(context->syschar_model, itemid);
		free(itemid);itemid=NULL;
		add_oval_syschar_sysdata(syschar, sysdata);
		return_code = 1;
	}
	free(tagname);
	free(namespace);
	if(return_code!=1){
		char message[200]; *message = 0;
		sprintf(message, "_oval_syschar_parse_tag:: return code is not 1::(%d)",return_code);
		oval_parser_log_warn(context, message);
	}
	return return_code;
}

int oval_syschar_parse_tag(xmlTextReaderPtr reader,
			       struct oval_parser_context *context)
{
	char *tagname   = (char*) xmlTextReaderName(reader);
	char *namespace = (char*) xmlTextReaderNamespaceUri(reader);
	if(OVAL_SYSCHAR_DEBUG){//DEBUG
		char message[200]; *message = 0;
		sprintf(message,
				"oval_syschar_parse_tag(<%s:%s>): enter",
				namespace, tagname);
		oval_parser_log_debug(context, message);
	}//DEBUG
	int is_ovalsys = strcmp(namespace,NAMESPACE_OVALSYS)==0;
	int return_code;
	if(is_ovalsys && (strcmp(tagname,"object")==0)){
		char *object_id = (char*) xmlTextReaderGetAttribute(reader, BAD_CAST "id");
		struct oval_object *object = get_oval_object_new(context->model, object_id);
		free(object_id);object_id=NULL;
		oval_syschar_t *syschar = get_oval_syschar_new(context->syschar_model, object);
		syschar->sysinfo = context->syschar_sysinfo;
		char *flag = (char*) xmlTextReaderGetAttribute(reader, BAD_CAST "flag");
		oval_syschar_collection_flag_enum flag_enum
			= oval_syschar_flag_parse(reader, "flag", SYSCHAR_FLAG_UNKNOWN);
		if(flag!=NULL)free(flag);
		set_oval_syschar_flag(syschar, flag_enum);
		return_code = oval_parser_parse_tag(reader, context, &_oval_syschar_parse_subtag, syschar);
	}else{
		char message[200]; *message = 0;
		sprintf(message, "oval_syschar_parse_tag:: expecting <object> got <%s:%s>",
				namespace, tagname);
		oval_parser_log_warn(context, message);
		return_code = oval_parser_skip_tag(reader, context);
	}
	if(OVAL_SYSCHAR_DEBUG){//DEBUG
		char message[200]; *message = 0;
		sprintf(message,
				"oval_syschar_parse_tag(<%s:%s>): exit",
				namespace, tagname);
		oval_parser_log_debug(context, message);
	}//DEBUG
	free(tagname);
	free(namespace);
	if(return_code!=1){
		char message[200]; *message = 0;
		sprintf(message, "oval_syschar_parse_tag:: return code is not 1::(%d)",return_code);
		oval_parser_log_warn(context, message);
	}

	//struct oval_object_model *model = context->model;

	return return_code;
}

void oval_syschar_to_print(struct oval_syschar *syschar, char *indent,
			      int idx)
{
	char nxtindent[100];

	if (strlen(indent) > 80)
		indent = "....";

	if (idx == 0)
		snprintf(nxtindent, sizeof(nxtindent), "%sSYSCHAR.", indent);
	else
		snprintf(nxtindent, sizeof(nxtindent), "%sSYSCHAR[%d].", indent, idx);

	/*
	oval_syschar_collection_flag_enum flag;
	struct oval_collection *messages;
	struct oval_sysinfo *sysinfo;
	struct oval_object *object;
	struct oval_collection *sysdata;
	 */
	printf("%sFLAG    = %d\n", nxtindent, oval_syschar_flag(syschar));
	{//messages
		struct oval_iterator_message *messages = oval_syschar_messages(syschar);
		int i;for(i=1;oval_iterator_message_has_more(messages);i++){
			struct oval_message *message = oval_iterator_message_next(messages);
			oval_message_to_print(message, nxtindent, i);
		}
	}
	{//sysinfo
		struct oval_sysinfo *sysinfo = oval_syschar_sysinfo(syschar);
		if (sysinfo) oval_sysinfo_to_print(sysinfo, nxtindent, 0);
	}

	{//object
		struct oval_object *object = oval_syschar_object(syschar);
		if (object) oval_object_to_print(object, nxtindent, 0);
	}
	{//sysdata
		struct oval_iterator_sysdata *sysdatas = oval_syschar_sysdata(syschar);
		int hasMore = oval_iterator_sysdata_has_more(sysdatas);
		if(hasMore){
			int i;for(i=1;oval_iterator_sysdata_has_more(sysdatas);i++){
				struct oval_sysdata *sysdata = oval_iterator_sysdata_next(sysdatas);
				oval_sysdata_to_print(sysdata, nxtindent, i);
			}
		}
	}
}

