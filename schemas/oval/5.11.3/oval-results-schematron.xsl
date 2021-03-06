<?xml version="1.0" standalone="yes"?>
<axsl:stylesheet xmlns:axsl="http://www.w3.org/1999/XSL/Transform" xmlns:sch="http://www.ascc.net/xml/schematron" xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:oval-res="http://oval.mitre.org/XMLSchema/oval-results-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oval-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" xmlns:android-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#android" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" xmlns:apple-ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apple_ios" xmlns:asa-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#asa" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" xmlns:iosxe-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe" xmlns:junos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#junos" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" xmlns:netconf-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#netconf" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" xmlns:aix-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#aix" xmlns:apache-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows" xmlns:catos-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#catos" xmlns:esx-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#esx" xmlns:freebsd-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#freebsd" xmlns:hpux-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#hpux" xmlns:ind-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#independent" xmlns:ios-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#ios" xmlns:linux-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#linux" xmlns:macos-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#macos" xmlns:pixos-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#pixos" xmlns:sp-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#sharepoint" xmlns:sol-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#solaris" xmlns:unix-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#unix" xmlns:win-sc="http://oval.mitre.org/XMLSchema/oval-system-characteristics-5#windows" version="1.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->
<axsl:param name="archiveDirParameter"/><axsl:param name="archiveNameParameter"/><axsl:param name="fileNameParameter"/><axsl:param name="fileDirParameter"/>

<!--PHASES-->


<!--PROLOG-->


<!--KEYS-->


<!--DEFAULT RULES-->


<!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
<!--This mode can be used to generate an ugly though full XPath for locators-->
<axsl:template match="*" mode="schematron-select-full-path"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:template>

<!--MODE: SCHEMATRON-FULL-PATH-->
<!--This mode can be used to generate an ugly though full XPath for locators-->
<axsl:template match="*" mode="schematron-get-full-path"><axsl:apply-templates select="parent::*" mode="schematron-get-full-path"/><axsl:text>/</axsl:text><axsl:choose><axsl:when test="namespace-uri()=''"><axsl:value-of select="name()"/><axsl:variable name="p_1" select="1+    count(preceding-sibling::*[name()=name(current())])"/><axsl:if test="$p_1&gt;1 or following-sibling::*[name()=name(current())]">[<axsl:value-of select="$p_1"/>]</axsl:if></axsl:when><axsl:otherwise><axsl:text>*[local-name()='</axsl:text><axsl:value-of select="local-name()"/><axsl:text>' and namespace-uri()='</axsl:text><axsl:value-of select="namespace-uri()"/><axsl:text>']</axsl:text><axsl:variable name="p_2" select="1+   count(preceding-sibling::*[local-name()=local-name(current())])"/><axsl:if test="$p_2&gt;1 or following-sibling::*[local-name()=local-name(current())]">[<axsl:value-of select="$p_2"/>]</axsl:if></axsl:otherwise></axsl:choose></axsl:template><axsl:template match="@*" mode="schematron-get-full-path"><axsl:text>/</axsl:text><axsl:choose><axsl:when test="namespace-uri()=''">@<axsl:value-of select="name()"/></axsl:when><axsl:otherwise><axsl:text>@*[local-name()='</axsl:text><axsl:value-of select="local-name()"/><axsl:text>' and namespace-uri()='</axsl:text><axsl:value-of select="namespace-uri()"/><axsl:text>']</axsl:text></axsl:otherwise></axsl:choose></axsl:template>

<!--MODE: SCHEMATRON-FULL-PATH-2-->
<!--This mode can be used to generate prefixed XPath for humans-->
<axsl:template match="node() | @*" mode="schematron-get-full-path-2"><axsl:for-each select="ancestor-or-self::*"><axsl:text>/</axsl:text><axsl:value-of select="name(.)"/><axsl:if test="preceding-sibling::*[name(.)=name(current())]"><axsl:text>[</axsl:text><axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/><axsl:text>]</axsl:text></axsl:if></axsl:for-each><axsl:if test="not(self::*)"><axsl:text/>/@<axsl:value-of select="name(.)"/></axsl:if></axsl:template>

<!--MODE: GENERATE-ID-FROM-PATH -->
<axsl:template match="/" mode="generate-id-from-path"/><axsl:template match="text()" mode="generate-id-from-path"><axsl:apply-templates select="parent::*" mode="generate-id-from-path"/><axsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/></axsl:template><axsl:template match="comment()" mode="generate-id-from-path"><axsl:apply-templates select="parent::*" mode="generate-id-from-path"/><axsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/></axsl:template><axsl:template match="processing-instruction()" mode="generate-id-from-path"><axsl:apply-templates select="parent::*" mode="generate-id-from-path"/><axsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/></axsl:template><axsl:template match="@*" mode="generate-id-from-path"><axsl:apply-templates select="parent::*" mode="generate-id-from-path"/><axsl:value-of select="concat('.@', name())"/></axsl:template><axsl:template match="*" mode="generate-id-from-path" priority="-0.5"><axsl:apply-templates select="parent::*" mode="generate-id-from-path"/><axsl:text>.</axsl:text><axsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/></axsl:template><!--MODE: SCHEMATRON-FULL-PATH-3-->
<!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->
<axsl:template match="node() | @*" mode="schematron-get-full-path-3"><axsl:for-each select="ancestor-or-self::*"><axsl:text>/</axsl:text><axsl:value-of select="name(.)"/><axsl:if test="parent::*"><axsl:text>[</axsl:text><axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/><axsl:text>]</axsl:text></axsl:if></axsl:for-each><axsl:if test="not(self::*)"><axsl:text/>/@<axsl:value-of select="name(.)"/></axsl:if></axsl:template>

<!--MODE: GENERATE-ID-2 -->
<axsl:template match="/" mode="generate-id-2">U</axsl:template><axsl:template match="*" mode="generate-id-2" priority="2"><axsl:text>U</axsl:text><axsl:number level="multiple" count="*"/></axsl:template><axsl:template match="node()" mode="generate-id-2"><axsl:text>U.</axsl:text><axsl:number level="multiple" count="*"/><axsl:text>n</axsl:text><axsl:number count="node()"/></axsl:template><axsl:template match="@*" mode="generate-id-2"><axsl:text>U.</axsl:text><axsl:number level="multiple" count="*"/><axsl:text>_</axsl:text><axsl:value-of select="string-length(local-name(.))"/><axsl:text>_</axsl:text><axsl:value-of select="translate(name(),':','.')"/></axsl:template><!--Strip characters--><axsl:template match="text()" priority="-1"/>

<!--SCHEMA METADATA-->
<axsl:template match="/"><axsl:apply-templates select="/" mode="M41"/><axsl:apply-templates select="/" mode="M42"/><axsl:apply-templates select="/" mode="M43"/><axsl:apply-templates select="/" mode="M44"/><axsl:apply-templates select="/" mode="M45"/><axsl:apply-templates select="/" mode="M46"/><axsl:apply-templates select="/" mode="M47"/><axsl:apply-templates select="/" mode="M48"/><axsl:apply-templates select="/" mode="M49"/><axsl:apply-templates select="/" mode="M50"/><axsl:apply-templates select="/" mode="M51"/><axsl:apply-templates select="/" mode="M52"/><axsl:apply-templates select="/" mode="M53"/><axsl:apply-templates select="/" mode="M54"/><axsl:apply-templates select="/" mode="M55"/><axsl:apply-templates select="/" mode="M56"/><axsl:apply-templates select="/" mode="M57"/><axsl:apply-templates select="/" mode="M58"/><axsl:apply-templates select="/" mode="M59"/><axsl:apply-templates select="/" mode="M60"/><axsl:apply-templates select="/" mode="M61"/><axsl:apply-templates select="/" mode="M62"/><axsl:apply-templates select="/" mode="M63"/><axsl:apply-templates select="/" mode="M64"/><axsl:apply-templates select="/" mode="M65"/><axsl:apply-templates select="/" mode="M66"/><axsl:apply-templates select="/" mode="M67"/><axsl:apply-templates select="/" mode="M68"/><axsl:apply-templates select="/" mode="M69"/><axsl:apply-templates select="/" mode="M70"/><axsl:apply-templates select="/" mode="M71"/><axsl:apply-templates select="/" mode="M72"/><axsl:apply-templates select="/" mode="M73"/><axsl:apply-templates select="/" mode="M74"/><axsl:apply-templates select="/" mode="M75"/><axsl:apply-templates select="/" mode="M76"/><axsl:apply-templates select="/" mode="M77"/><axsl:apply-templates select="/" mode="M78"/><axsl:apply-templates select="/" mode="M79"/><axsl:apply-templates select="/" mode="M80"/><axsl:apply-templates select="/" mode="M81"/><axsl:apply-templates select="/" mode="M82"/><axsl:apply-templates select="/" mode="M83"/><axsl:apply-templates select="/" mode="M84"/><axsl:apply-templates select="/" mode="M85"/><axsl:apply-templates select="/" mode="M86"/><axsl:apply-templates select="/" mode="M87"/><axsl:apply-templates select="/" mode="M88"/><axsl:apply-templates select="/" mode="M89"/><axsl:apply-templates select="/" mode="M90"/><axsl:apply-templates select="/" mode="M91"/><axsl:apply-templates select="/" mode="M92"/><axsl:apply-templates select="/" mode="M93"/><axsl:apply-templates select="/" mode="M94"/><axsl:apply-templates select="/" mode="M95"/><axsl:apply-templates select="/" mode="M96"/><axsl:apply-templates select="/" mode="M97"/><axsl:apply-templates select="/" mode="M98"/><axsl:apply-templates select="/" mode="M99"/><axsl:apply-templates select="/" mode="M100"/><axsl:apply-templates select="/" mode="M101"/><axsl:apply-templates select="/" mode="M102"/><axsl:apply-templates select="/" mode="M103"/><axsl:apply-templates select="/" mode="M104"/><axsl:apply-templates select="/" mode="M105"/><axsl:apply-templates select="/" mode="M106"/><axsl:apply-templates select="/" mode="M107"/><axsl:apply-templates select="/" mode="M108"/><axsl:apply-templates select="/" mode="M109"/><axsl:apply-templates select="/" mode="M110"/><axsl:apply-templates select="/" mode="M111"/><axsl:apply-templates select="/" mode="M112"/><axsl:apply-templates select="/" mode="M113"/><axsl:apply-templates select="/" mode="M114"/><axsl:apply-templates select="/" mode="M115"/><axsl:apply-templates select="/" mode="M116"/><axsl:apply-templates select="/" mode="M117"/><axsl:apply-templates select="/" mode="M118"/><axsl:apply-templates select="/" mode="M119"/><axsl:apply-templates select="/" mode="M120"/><axsl:apply-templates select="/" mode="M121"/><axsl:apply-templates select="/" mode="M122"/><axsl:apply-templates select="/" mode="M123"/><axsl:apply-templates select="/" mode="M124"/><axsl:apply-templates select="/" mode="M125"/><axsl:apply-templates select="/" mode="M126"/><axsl:apply-templates select="/" mode="M127"/><axsl:apply-templates select="/" mode="M128"/><axsl:apply-templates select="/" mode="M129"/><axsl:apply-templates select="/" mode="M130"/><axsl:apply-templates select="/" mode="M131"/><axsl:apply-templates select="/" mode="M132"/><axsl:apply-templates select="/" mode="M133"/><axsl:apply-templates select="/" mode="M134"/><axsl:apply-templates select="/" mode="M135"/><axsl:apply-templates select="/" mode="M136"/><axsl:apply-templates select="/" mode="M137"/><axsl:apply-templates select="/" mode="M138"/><axsl:apply-templates select="/" mode="M139"/><axsl:apply-templates select="/" mode="M140"/><axsl:apply-templates select="/" mode="M141"/><axsl:apply-templates select="/" mode="M142"/><axsl:apply-templates select="/" mode="M143"/><axsl:apply-templates select="/" mode="M144"/><axsl:apply-templates select="/" mode="M145"/><axsl:apply-templates select="/" mode="M146"/><axsl:apply-templates select="/" mode="M147"/><axsl:apply-templates select="/" mode="M148"/><axsl:apply-templates select="/" mode="M149"/><axsl:apply-templates select="/" mode="M150"/><axsl:apply-templates select="/" mode="M151"/><axsl:apply-templates select="/" mode="M152"/><axsl:apply-templates select="/" mode="M153"/><axsl:apply-templates select="/" mode="M154"/><axsl:apply-templates select="/" mode="M155"/><axsl:apply-templates select="/" mode="M156"/><axsl:apply-templates select="/" mode="M157"/><axsl:apply-templates select="/" mode="M158"/><axsl:apply-templates select="/" mode="M159"/><axsl:apply-templates select="/" mode="M160"/><axsl:apply-templates select="/" mode="M161"/><axsl:apply-templates select="/" mode="M162"/><axsl:apply-templates select="/" mode="M163"/><axsl:apply-templates select="/" mode="M164"/><axsl:apply-templates select="/" mode="M165"/><axsl:apply-templates select="/" mode="M166"/><axsl:apply-templates select="/" mode="M167"/><axsl:apply-templates select="/" mode="M168"/><axsl:apply-templates select="/" mode="M169"/><axsl:apply-templates select="/" mode="M170"/><axsl:apply-templates select="/" mode="M171"/><axsl:apply-templates select="/" mode="M172"/><axsl:apply-templates select="/" mode="M173"/><axsl:apply-templates select="/" mode="M174"/><axsl:apply-templates select="/" mode="M175"/><axsl:apply-templates select="/" mode="M176"/><axsl:apply-templates select="/" mode="M177"/><axsl:apply-templates select="/" mode="M178"/><axsl:apply-templates select="/" mode="M179"/><axsl:apply-templates select="/" mode="M180"/><axsl:apply-templates select="/" mode="M181"/><axsl:apply-templates select="/" mode="M182"/><axsl:apply-templates select="/" mode="M183"/><axsl:apply-templates select="/" mode="M184"/><axsl:apply-templates select="/" mode="M185"/><axsl:apply-templates select="/" mode="M186"/><axsl:apply-templates select="/" mode="M187"/><axsl:apply-templates select="/" mode="M188"/><axsl:apply-templates select="/" mode="M189"/><axsl:apply-templates select="/" mode="M190"/><axsl:apply-templates select="/" mode="M191"/><axsl:apply-templates select="/" mode="M192"/><axsl:apply-templates select="/" mode="M193"/><axsl:apply-templates select="/" mode="M194"/><axsl:apply-templates select="/" mode="M195"/><axsl:apply-templates select="/" mode="M196"/><axsl:apply-templates select="/" mode="M197"/><axsl:apply-templates select="/" mode="M198"/><axsl:apply-templates select="/" mode="M199"/><axsl:apply-templates select="/" mode="M200"/><axsl:apply-templates select="/" mode="M201"/><axsl:apply-templates select="/" mode="M202"/><axsl:apply-templates select="/" mode="M203"/><axsl:apply-templates select="/" mode="M204"/><axsl:apply-templates select="/" mode="M205"/><axsl:apply-templates select="/" mode="M206"/><axsl:apply-templates select="/" mode="M207"/><axsl:apply-templates select="/" mode="M208"/><axsl:apply-templates select="/" mode="M209"/><axsl:apply-templates select="/" mode="M210"/><axsl:apply-templates select="/" mode="M211"/><axsl:apply-templates select="/" mode="M212"/><axsl:apply-templates select="/" mode="M213"/><axsl:apply-templates select="/" mode="M214"/><axsl:apply-templates select="/" mode="M215"/><axsl:apply-templates select="/" mode="M216"/><axsl:apply-templates select="/" mode="M217"/><axsl:apply-templates select="/" mode="M218"/><axsl:apply-templates select="/" mode="M219"/><axsl:apply-templates select="/" mode="M220"/><axsl:apply-templates select="/" mode="M221"/><axsl:apply-templates select="/" mode="M222"/><axsl:apply-templates select="/" mode="M223"/><axsl:apply-templates select="/" mode="M224"/><axsl:apply-templates select="/" mode="M225"/><axsl:apply-templates select="/" mode="M226"/><axsl:apply-templates select="/" mode="M227"/><axsl:apply-templates select="/" mode="M228"/><axsl:apply-templates select="/" mode="M229"/><axsl:apply-templates select="/" mode="M230"/><axsl:apply-templates select="/" mode="M231"/><axsl:apply-templates select="/" mode="M232"/><axsl:apply-templates select="/" mode="M233"/><axsl:apply-templates select="/" mode="M234"/><axsl:apply-templates select="/" mode="M235"/><axsl:apply-templates select="/" mode="M236"/><axsl:apply-templates select="/" mode="M237"/><axsl:apply-templates select="/" mode="M238"/><axsl:apply-templates select="/" mode="M239"/><axsl:apply-templates select="/" mode="M240"/><axsl:apply-templates select="/" mode="M241"/><axsl:apply-templates select="/" mode="M242"/><axsl:apply-templates select="/" mode="M243"/><axsl:apply-templates select="/" mode="M244"/><axsl:apply-templates select="/" mode="M245"/><axsl:apply-templates select="/" mode="M246"/><axsl:apply-templates select="/" mode="M247"/><axsl:apply-templates select="/" mode="M248"/><axsl:apply-templates select="/" mode="M249"/><axsl:apply-templates select="/" mode="M250"/><axsl:apply-templates select="/" mode="M251"/><axsl:apply-templates select="/" mode="M252"/><axsl:apply-templates select="/" mode="M253"/><axsl:apply-templates select="/" mode="M254"/><axsl:apply-templates select="/" mode="M255"/><axsl:apply-templates select="/" mode="M256"/><axsl:apply-templates select="/" mode="M257"/><axsl:apply-templates select="/" mode="M258"/><axsl:apply-templates select="/" mode="M259"/><axsl:apply-templates select="/" mode="M260"/><axsl:apply-templates select="/" mode="M261"/><axsl:apply-templates select="/" mode="M262"/><axsl:apply-templates select="/" mode="M263"/><axsl:apply-templates select="/" mode="M264"/><axsl:apply-templates select="/" mode="M265"/><axsl:apply-templates select="/" mode="M266"/><axsl:apply-templates select="/" mode="M267"/><axsl:apply-templates select="/" mode="M268"/><axsl:apply-templates select="/" mode="M269"/><axsl:apply-templates select="/" mode="M270"/><axsl:apply-templates select="/" mode="M271"/><axsl:apply-templates select="/" mode="M272"/><axsl:apply-templates select="/" mode="M273"/><axsl:apply-templates select="/" mode="M274"/><axsl:apply-templates select="/" mode="M275"/><axsl:apply-templates select="/" mode="M276"/><axsl:apply-templates select="/" mode="M277"/><axsl:apply-templates select="/" mode="M278"/><axsl:apply-templates select="/" mode="M279"/><axsl:apply-templates select="/" mode="M280"/><axsl:apply-templates select="/" mode="M281"/><axsl:apply-templates select="/" mode="M282"/><axsl:apply-templates select="/" mode="M283"/><axsl:apply-templates select="/" mode="M284"/><axsl:apply-templates select="/" mode="M285"/><axsl:apply-templates select="/" mode="M286"/><axsl:apply-templates select="/" mode="M287"/><axsl:apply-templates select="/" mode="M288"/><axsl:apply-templates select="/" mode="M289"/><axsl:apply-templates select="/" mode="M290"/><axsl:apply-templates select="/" mode="M291"/><axsl:apply-templates select="/" mode="M292"/><axsl:apply-templates select="/" mode="M293"/><axsl:apply-templates select="/" mode="M294"/><axsl:apply-templates select="/" mode="M295"/><axsl:apply-templates select="/" mode="M296"/><axsl:apply-templates select="/" mode="M297"/><axsl:apply-templates select="/" mode="M298"/><axsl:apply-templates select="/" mode="M299"/><axsl:apply-templates select="/" mode="M300"/><axsl:apply-templates select="/" mode="M301"/><axsl:apply-templates select="/" mode="M302"/><axsl:apply-templates select="/" mode="M303"/><axsl:apply-templates select="/" mode="M304"/><axsl:apply-templates select="/" mode="M305"/><axsl:apply-templates select="/" mode="M306"/><axsl:apply-templates select="/" mode="M307"/><axsl:apply-templates select="/" mode="M308"/><axsl:apply-templates select="/" mode="M309"/><axsl:apply-templates select="/" mode="M310"/><axsl:apply-templates select="/" mode="M311"/><axsl:apply-templates select="/" mode="M312"/><axsl:apply-templates select="/" mode="M313"/><axsl:apply-templates select="/" mode="M314"/><axsl:apply-templates select="/" mode="M315"/><axsl:apply-templates select="/" mode="M316"/><axsl:apply-templates select="/" mode="M317"/><axsl:apply-templates select="/" mode="M318"/><axsl:apply-templates select="/" mode="M319"/><axsl:apply-templates select="/" mode="M320"/><axsl:apply-templates select="/" mode="M321"/><axsl:apply-templates select="/" mode="M322"/><axsl:apply-templates select="/" mode="M323"/><axsl:apply-templates select="/" mode="M324"/><axsl:apply-templates select="/" mode="M325"/><axsl:apply-templates select="/" mode="M326"/><axsl:apply-templates select="/" mode="M327"/><axsl:apply-templates select="/" mode="M328"/><axsl:apply-templates select="/" mode="M329"/><axsl:apply-templates select="/" mode="M330"/><axsl:apply-templates select="/" mode="M331"/><axsl:apply-templates select="/" mode="M332"/><axsl:apply-templates select="/" mode="M333"/><axsl:apply-templates select="/" mode="M334"/><axsl:apply-templates select="/" mode="M335"/><axsl:apply-templates select="/" mode="M336"/><axsl:apply-templates select="/" mode="M337"/><axsl:apply-templates select="/" mode="M338"/><axsl:apply-templates select="/" mode="M339"/><axsl:apply-templates select="/" mode="M340"/><axsl:apply-templates select="/" mode="M341"/><axsl:apply-templates select="/" mode="M342"/><axsl:apply-templates select="/" mode="M343"/><axsl:apply-templates select="/" mode="M344"/><axsl:apply-templates select="/" mode="M345"/><axsl:apply-templates select="/" mode="M346"/><axsl:apply-templates select="/" mode="M347"/><axsl:apply-templates select="/" mode="M348"/><axsl:apply-templates select="/" mode="M349"/><axsl:apply-templates select="/" mode="M350"/><axsl:apply-templates select="/" mode="M351"/><axsl:apply-templates select="/" mode="M352"/><axsl:apply-templates select="/" mode="M353"/><axsl:apply-templates select="/" mode="M354"/><axsl:apply-templates select="/" mode="M355"/><axsl:apply-templates select="/" mode="M356"/><axsl:apply-templates select="/" mode="M357"/><axsl:apply-templates select="/" mode="M358"/><axsl:apply-templates select="/" mode="M359"/><axsl:apply-templates select="/" mode="M360"/><axsl:apply-templates select="/" mode="M361"/><axsl:apply-templates select="/" mode="M362"/><axsl:apply-templates select="/" mode="M363"/><axsl:apply-templates select="/" mode="M364"/><axsl:apply-templates select="/" mode="M365"/><axsl:apply-templates select="/" mode="M366"/><axsl:apply-templates select="/" mode="M367"/><axsl:apply-templates select="/" mode="M368"/><axsl:apply-templates select="/" mode="M369"/><axsl:apply-templates select="/" mode="M370"/><axsl:apply-templates select="/" mode="M371"/><axsl:apply-templates select="/" mode="M372"/><axsl:apply-templates select="/" mode="M373"/><axsl:apply-templates select="/" mode="M374"/><axsl:apply-templates select="/" mode="M375"/><axsl:apply-templates select="/" mode="M376"/><axsl:apply-templates select="/" mode="M377"/><axsl:apply-templates select="/" mode="M378"/><axsl:apply-templates select="/" mode="M379"/><axsl:apply-templates select="/" mode="M380"/><axsl:apply-templates select="/" mode="M381"/><axsl:apply-templates select="/" mode="M382"/><axsl:apply-templates select="/" mode="M383"/><axsl:apply-templates select="/" mode="M384"/><axsl:apply-templates select="/" mode="M385"/><axsl:apply-templates select="/" mode="M386"/><axsl:apply-templates select="/" mode="M387"/><axsl:apply-templates select="/" mode="M388"/><axsl:apply-templates select="/" mode="M389"/><axsl:apply-templates select="/" mode="M390"/><axsl:apply-templates select="/" mode="M391"/><axsl:apply-templates select="/" mode="M392"/><axsl:apply-templates select="/" mode="M393"/><axsl:apply-templates select="/" mode="M394"/><axsl:apply-templates select="/" mode="M395"/><axsl:apply-templates select="/" mode="M396"/><axsl:apply-templates select="/" mode="M397"/><axsl:apply-templates select="/" mode="M398"/><axsl:apply-templates select="/" mode="M399"/><axsl:apply-templates select="/" mode="M400"/><axsl:apply-templates select="/" mode="M401"/><axsl:apply-templates select="/" mode="M402"/><axsl:apply-templates select="/" mode="M403"/><axsl:apply-templates select="/" mode="M404"/><axsl:apply-templates select="/" mode="M405"/><axsl:apply-templates select="/" mode="M406"/><axsl:apply-templates select="/" mode="M407"/><axsl:apply-templates select="/" mode="M408"/><axsl:apply-templates select="/" mode="M409"/><axsl:apply-templates select="/" mode="M410"/><axsl:apply-templates select="/" mode="M411"/><axsl:apply-templates select="/" mode="M412"/><axsl:apply-templates select="/" mode="M413"/><axsl:apply-templates select="/" mode="M414"/><axsl:apply-templates select="/" mode="M415"/><axsl:apply-templates select="/" mode="M416"/><axsl:apply-templates select="/" mode="M417"/><axsl:apply-templates select="/" mode="M418"/><axsl:apply-templates select="/" mode="M419"/><axsl:apply-templates select="/" mode="M420"/><axsl:apply-templates select="/" mode="M421"/><axsl:apply-templates select="/" mode="M422"/><axsl:apply-templates select="/" mode="M423"/><axsl:apply-templates select="/" mode="M424"/><axsl:apply-templates select="/" mode="M425"/><axsl:apply-templates select="/" mode="M426"/><axsl:apply-templates select="/" mode="M427"/><axsl:apply-templates select="/" mode="M428"/><axsl:apply-templates select="/" mode="M429"/><axsl:apply-templates select="/" mode="M430"/><axsl:apply-templates select="/" mode="M431"/><axsl:apply-templates select="/" mode="M432"/><axsl:apply-templates select="/" mode="M433"/><axsl:apply-templates select="/" mode="M434"/><axsl:apply-templates select="/" mode="M435"/><axsl:apply-templates select="/" mode="M436"/><axsl:apply-templates select="/" mode="M437"/><axsl:apply-templates select="/" mode="M438"/><axsl:apply-templates select="/" mode="M439"/><axsl:apply-templates select="/" mode="M440"/><axsl:apply-templates select="/" mode="M441"/><axsl:apply-templates select="/" mode="M442"/><axsl:apply-templates select="/" mode="M443"/><axsl:apply-templates select="/" mode="M444"/><axsl:apply-templates select="/" mode="M445"/><axsl:apply-templates select="/" mode="M446"/><axsl:apply-templates select="/" mode="M447"/><axsl:apply-templates select="/" mode="M448"/><axsl:apply-templates select="/" mode="M449"/><axsl:apply-templates select="/" mode="M450"/><axsl:apply-templates select="/" mode="M451"/><axsl:apply-templates select="/" mode="M452"/><axsl:apply-templates select="/" mode="M453"/><axsl:apply-templates select="/" mode="M454"/><axsl:apply-templates select="/" mode="M455"/><axsl:apply-templates select="/" mode="M456"/><axsl:apply-templates select="/" mode="M457"/><axsl:apply-templates select="/" mode="M458"/><axsl:apply-templates select="/" mode="M459"/><axsl:apply-templates select="/" mode="M460"/><axsl:apply-templates select="/" mode="M461"/><axsl:apply-templates select="/" mode="M462"/><axsl:apply-templates select="/" mode="M463"/><axsl:apply-templates select="/" mode="M464"/><axsl:apply-templates select="/" mode="M465"/><axsl:apply-templates select="/" mode="M466"/><axsl:apply-templates select="/" mode="M467"/><axsl:apply-templates select="/" mode="M468"/><axsl:apply-templates select="/" mode="M469"/><axsl:apply-templates select="/" mode="M470"/><axsl:apply-templates select="/" mode="M471"/><axsl:apply-templates select="/" mode="M472"/><axsl:apply-templates select="/" mode="M473"/><axsl:apply-templates select="/" mode="M474"/><axsl:apply-templates select="/" mode="M475"/><axsl:apply-templates select="/" mode="M476"/><axsl:apply-templates select="/" mode="M477"/><axsl:apply-templates select="/" mode="M478"/><axsl:apply-templates select="/" mode="M479"/><axsl:apply-templates select="/" mode="M480"/><axsl:apply-templates select="/" mode="M481"/><axsl:apply-templates select="/" mode="M482"/><axsl:apply-templates select="/" mode="M483"/><axsl:apply-templates select="/" mode="M484"/><axsl:apply-templates select="/" mode="M485"/><axsl:apply-templates select="/" mode="M486"/><axsl:apply-templates select="/" mode="M487"/><axsl:apply-templates select="/" mode="M488"/><axsl:apply-templates select="/" mode="M489"/><axsl:apply-templates select="/" mode="M490"/><axsl:apply-templates select="/" mode="M491"/><axsl:apply-templates select="/" mode="M492"/><axsl:apply-templates select="/" mode="M493"/><axsl:apply-templates select="/" mode="M494"/><axsl:apply-templates select="/" mode="M495"/><axsl:apply-templates select="/" mode="M496"/><axsl:apply-templates select="/" mode="M497"/><axsl:apply-templates select="/" mode="M498"/><axsl:apply-templates select="/" mode="M499"/><axsl:apply-templates select="/" mode="M500"/><axsl:apply-templates select="/" mode="M501"/><axsl:apply-templates select="/" mode="M502"/><axsl:apply-templates select="/" mode="M503"/><axsl:apply-templates select="/" mode="M504"/><axsl:apply-templates select="/" mode="M505"/><axsl:apply-templates select="/" mode="M506"/><axsl:apply-templates select="/" mode="M507"/><axsl:apply-templates select="/" mode="M508"/><axsl:apply-templates select="/" mode="M509"/><axsl:apply-templates select="/" mode="M510"/><axsl:apply-templates select="/" mode="M511"/><axsl:apply-templates select="/" mode="M512"/><axsl:apply-templates select="/" mode="M513"/><axsl:apply-templates select="/" mode="M514"/><axsl:apply-templates select="/" mode="M515"/><axsl:apply-templates select="/" mode="M516"/><axsl:apply-templates select="/" mode="M517"/><axsl:apply-templates select="/" mode="M518"/><axsl:apply-templates select="/" mode="M519"/><axsl:apply-templates select="/" mode="M520"/><axsl:apply-templates select="/" mode="M521"/><axsl:apply-templates select="/" mode="M522"/><axsl:apply-templates select="/" mode="M523"/><axsl:apply-templates select="/" mode="M524"/><axsl:apply-templates select="/" mode="M525"/><axsl:apply-templates select="/" mode="M526"/><axsl:apply-templates select="/" mode="M527"/><axsl:apply-templates select="/" mode="M528"/><axsl:apply-templates select="/" mode="M529"/><axsl:apply-templates select="/" mode="M530"/><axsl:apply-templates select="/" mode="M531"/><axsl:apply-templates select="/" mode="M532"/><axsl:apply-templates select="/" mode="M533"/><axsl:apply-templates select="/" mode="M534"/><axsl:apply-templates select="/" mode="M535"/><axsl:apply-templates select="/" mode="M536"/><axsl:apply-templates select="/" mode="M537"/><axsl:apply-templates select="/" mode="M538"/><axsl:apply-templates select="/" mode="M539"/><axsl:apply-templates select="/" mode="M540"/><axsl:apply-templates select="/" mode="M541"/><axsl:apply-templates select="/" mode="M542"/><axsl:apply-templates select="/" mode="M543"/><axsl:apply-templates select="/" mode="M544"/><axsl:apply-templates select="/" mode="M545"/><axsl:apply-templates select="/" mode="M546"/><axsl:apply-templates select="/" mode="M547"/><axsl:apply-templates select="/" mode="M548"/><axsl:apply-templates select="/" mode="M549"/><axsl:apply-templates select="/" mode="M550"/><axsl:apply-templates select="/" mode="M551"/><axsl:apply-templates select="/" mode="M552"/><axsl:apply-templates select="/" mode="M553"/><axsl:apply-templates select="/" mode="M554"/><axsl:apply-templates select="/" mode="M555"/><axsl:apply-templates select="/" mode="M556"/><axsl:apply-templates select="/" mode="M557"/><axsl:apply-templates select="/" mode="M558"/><axsl:apply-templates select="/" mode="M559"/><axsl:apply-templates select="/" mode="M560"/><axsl:apply-templates select="/" mode="M561"/><axsl:apply-templates select="/" mode="M562"/><axsl:apply-templates select="/" mode="M563"/><axsl:apply-templates select="/" mode="M564"/><axsl:apply-templates select="/" mode="M565"/><axsl:apply-templates select="/" mode="M566"/><axsl:apply-templates select="/" mode="M567"/><axsl:apply-templates select="/" mode="M568"/><axsl:apply-templates select="/" mode="M569"/><axsl:apply-templates select="/" mode="M570"/><axsl:apply-templates select="/" mode="M571"/><axsl:apply-templates select="/" mode="M572"/><axsl:apply-templates select="/" mode="M573"/><axsl:apply-templates select="/" mode="M574"/><axsl:apply-templates select="/" mode="M575"/><axsl:apply-templates select="/" mode="M576"/><axsl:apply-templates select="/" mode="M577"/><axsl:apply-templates select="/" mode="M578"/><axsl:apply-templates select="/" mode="M579"/><axsl:apply-templates select="/" mode="M580"/><axsl:apply-templates select="/" mode="M581"/><axsl:apply-templates select="/" mode="M582"/><axsl:apply-templates select="/" mode="M583"/><axsl:apply-templates select="/" mode="M584"/><axsl:apply-templates select="/" mode="M585"/><axsl:apply-templates select="/" mode="M586"/><axsl:apply-templates select="/" mode="M587"/><axsl:apply-templates select="/" mode="M588"/><axsl:apply-templates select="/" mode="M589"/><axsl:apply-templates select="/" mode="M590"/><axsl:apply-templates select="/" mode="M591"/><axsl:apply-templates select="/" mode="M592"/><axsl:apply-templates select="/" mode="M593"/><axsl:apply-templates select="/" mode="M594"/><axsl:apply-templates select="/" mode="M595"/><axsl:apply-templates select="/" mode="M596"/><axsl:apply-templates select="/" mode="M597"/><axsl:apply-templates select="/" mode="M598"/><axsl:apply-templates select="/" mode="M599"/><axsl:apply-templates select="/" mode="M600"/><axsl:apply-templates select="/" mode="M601"/><axsl:apply-templates select="/" mode="M602"/><axsl:apply-templates select="/" mode="M603"/><axsl:apply-templates select="/" mode="M604"/><axsl:apply-templates select="/" mode="M605"/><axsl:apply-templates select="/" mode="M606"/><axsl:apply-templates select="/" mode="M607"/><axsl:apply-templates select="/" mode="M608"/><axsl:apply-templates select="/" mode="M609"/><axsl:apply-templates select="/" mode="M610"/><axsl:apply-templates select="/" mode="M611"/><axsl:apply-templates select="/" mode="M612"/><axsl:apply-templates select="/" mode="M613"/><axsl:apply-templates select="/" mode="M614"/><axsl:apply-templates select="/" mode="M615"/><axsl:apply-templates select="/" mode="M616"/><axsl:apply-templates select="/" mode="M617"/><axsl:apply-templates select="/" mode="M618"/><axsl:apply-templates select="/" mode="M619"/><axsl:apply-templates select="/" mode="M620"/><axsl:apply-templates select="/" mode="M621"/><axsl:apply-templates select="/" mode="M622"/><axsl:apply-templates select="/" mode="M623"/><axsl:apply-templates select="/" mode="M624"/><axsl:apply-templates select="/" mode="M625"/><axsl:apply-templates select="/" mode="M626"/><axsl:apply-templates select="/" mode="M627"/><axsl:apply-templates select="/" mode="M628"/><axsl:apply-templates select="/" mode="M629"/><axsl:apply-templates select="/" mode="M630"/><axsl:apply-templates select="/" mode="M631"/><axsl:apply-templates select="/" mode="M632"/><axsl:apply-templates select="/" mode="M633"/><axsl:apply-templates select="/" mode="M634"/><axsl:apply-templates select="/" mode="M635"/><axsl:apply-templates select="/" mode="M636"/><axsl:apply-templates select="/" mode="M637"/><axsl:apply-templates select="/" mode="M638"/><axsl:apply-templates select="/" mode="M639"/><axsl:apply-templates select="/" mode="M640"/><axsl:apply-templates select="/" mode="M641"/><axsl:apply-templates select="/" mode="M642"/><axsl:apply-templates select="/" mode="M643"/><axsl:apply-templates select="/" mode="M644"/><axsl:apply-templates select="/" mode="M645"/><axsl:apply-templates select="/" mode="M646"/><axsl:apply-templates select="/" mode="M647"/><axsl:apply-templates select="/" mode="M648"/><axsl:apply-templates select="/" mode="M649"/><axsl:apply-templates select="/" mode="M650"/><axsl:apply-templates select="/" mode="M651"/><axsl:apply-templates select="/" mode="M652"/><axsl:apply-templates select="/" mode="M653"/><axsl:apply-templates select="/" mode="M654"/><axsl:apply-templates select="/" mode="M655"/><axsl:apply-templates select="/" mode="M656"/><axsl:apply-templates select="/" mode="M657"/><axsl:apply-templates select="/" mode="M658"/><axsl:apply-templates select="/" mode="M659"/><axsl:apply-templates select="/" mode="M660"/><axsl:apply-templates select="/" mode="M661"/><axsl:apply-templates select="/" mode="M662"/><axsl:apply-templates select="/" mode="M663"/><axsl:apply-templates select="/" mode="M664"/><axsl:apply-templates select="/" mode="M665"/><axsl:apply-templates select="/" mode="M666"/><axsl:apply-templates select="/" mode="M667"/><axsl:apply-templates select="/" mode="M668"/><axsl:apply-templates select="/" mode="M669"/><axsl:apply-templates select="/" mode="M670"/><axsl:apply-templates select="/" mode="M671"/><axsl:apply-templates select="/" mode="M672"/><axsl:apply-templates select="/" mode="M673"/><axsl:apply-templates select="/" mode="M674"/><axsl:apply-templates select="/" mode="M675"/><axsl:apply-templates select="/" mode="M676"/><axsl:apply-templates select="/" mode="M677"/><axsl:apply-templates select="/" mode="M678"/><axsl:apply-templates select="/" mode="M679"/><axsl:apply-templates select="/" mode="M680"/><axsl:apply-templates select="/" mode="M681"/><axsl:apply-templates select="/" mode="M682"/><axsl:apply-templates select="/" mode="M683"/><axsl:apply-templates select="/" mode="M684"/><axsl:apply-templates select="/" mode="M685"/><axsl:apply-templates select="/" mode="M686"/><axsl:apply-templates select="/" mode="M687"/><axsl:apply-templates select="/" mode="M688"/><axsl:apply-templates select="/" mode="M689"/><axsl:apply-templates select="/" mode="M690"/><axsl:apply-templates select="/" mode="M691"/><axsl:apply-templates select="/" mode="M692"/><axsl:apply-templates select="/" mode="M693"/><axsl:apply-templates select="/" mode="M694"/><axsl:apply-templates select="/" mode="M695"/><axsl:apply-templates select="/" mode="M696"/><axsl:apply-templates select="/" mode="M697"/><axsl:apply-templates select="/" mode="M698"/><axsl:apply-templates select="/" mode="M699"/><axsl:apply-templates select="/" mode="M700"/><axsl:apply-templates select="/" mode="M701"/><axsl:apply-templates select="/" mode="M702"/><axsl:apply-templates select="/" mode="M703"/><axsl:apply-templates select="/" mode="M704"/><axsl:apply-templates select="/" mode="M705"/><axsl:apply-templates select="/" mode="M706"/><axsl:apply-templates select="/" mode="M707"/><axsl:apply-templates select="/" mode="M708"/><axsl:apply-templates select="/" mode="M709"/><axsl:apply-templates select="/" mode="M710"/><axsl:apply-templates select="/" mode="M711"/><axsl:apply-templates select="/" mode="M712"/><axsl:apply-templates select="/" mode="M713"/><axsl:apply-templates select="/" mode="M714"/><axsl:apply-templates select="/" mode="M715"/><axsl:apply-templates select="/" mode="M716"/><axsl:apply-templates select="/" mode="M717"/><axsl:apply-templates select="/" mode="M718"/><axsl:apply-templates select="/" mode="M719"/><axsl:apply-templates select="/" mode="M720"/><axsl:apply-templates select="/" mode="M721"/><axsl:apply-templates select="/" mode="M722"/><axsl:apply-templates select="/" mode="M723"/><axsl:apply-templates select="/" mode="M724"/><axsl:apply-templates select="/" mode="M725"/><axsl:apply-templates select="/" mode="M726"/><axsl:apply-templates select="/" mode="M727"/><axsl:apply-templates select="/" mode="M728"/><axsl:apply-templates select="/" mode="M729"/><axsl:apply-templates select="/" mode="M730"/><axsl:apply-templates select="/" mode="M731"/><axsl:apply-templates select="/" mode="M732"/><axsl:apply-templates select="/" mode="M733"/><axsl:apply-templates select="/" mode="M734"/><axsl:apply-templates select="/" mode="M735"/><axsl:apply-templates select="/" mode="M736"/><axsl:apply-templates select="/" mode="M737"/><axsl:apply-templates select="/" mode="M738"/><axsl:apply-templates select="/" mode="M739"/><axsl:apply-templates select="/" mode="M740"/><axsl:apply-templates select="/" mode="M741"/><axsl:apply-templates select="/" mode="M742"/><axsl:apply-templates select="/" mode="M743"/><axsl:apply-templates select="/" mode="M744"/><axsl:apply-templates select="/" mode="M745"/><axsl:apply-templates select="/" mode="M746"/><axsl:apply-templates select="/" mode="M747"/><axsl:apply-templates select="/" mode="M748"/><axsl:apply-templates select="/" mode="M749"/><axsl:apply-templates select="/" mode="M750"/><axsl:apply-templates select="/" mode="M751"/><axsl:apply-templates select="/" mode="M752"/><axsl:apply-templates select="/" mode="M753"/><axsl:apply-templates select="/" mode="M754"/><axsl:apply-templates select="/" mode="M755"/><axsl:apply-templates select="/" mode="M756"/><axsl:apply-templates select="/" mode="M757"/><axsl:apply-templates select="/" mode="M758"/><axsl:apply-templates select="/" mode="M759"/><axsl:apply-templates select="/" mode="M760"/><axsl:apply-templates select="/" mode="M761"/><axsl:apply-templates select="/" mode="M762"/><axsl:apply-templates select="/" mode="M763"/><axsl:apply-templates select="/" mode="M764"/><axsl:apply-templates select="/" mode="M765"/><axsl:apply-templates select="/" mode="M766"/><axsl:apply-templates select="/" mode="M767"/><axsl:apply-templates select="/" mode="M768"/><axsl:apply-templates select="/" mode="M769"/><axsl:apply-templates select="/" mode="M770"/><axsl:apply-templates select="/" mode="M771"/><axsl:apply-templates select="/" mode="M772"/></axsl:template>

<!--SCHEMATRON PATTERNS-->


<!--PATTERN oval-res_directives_include_oval_definitions-->


	<!--RULE -->
<axsl:template match="oval-res:oval_results/oval-res:directives[@include_source_definitions='true' or @include_source_definitions='1' or not(@include_source_definitions)]" priority="1001" mode="M41">

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-res:oval_results[oval-def:oval_definitions]"/><axsl:otherwise>
                                                  The source OVAL Definition document must be included when the directives include_source_definitions attribute is set to true.
                                             <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M41"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:oval_results/oval-res:directives[@include_source_definitions='false' or @include_source_definitions='0']" priority="1000" mode="M41">

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-res:oval_results[not(oval-def:oval_definitions)]"/><axsl:otherwise>
                                                  The source OVAL Definition document must not be included when the directives include_source_definitions attribute is set to false.
                                             <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M41"/></axsl:template><axsl:template match="text()" priority="-1" mode="M41"/><axsl:template match="@*|node()" priority="-2" mode="M41"><axsl:apply-templates select="@*|*" mode="M41"/></axsl:template>

<!--PATTERN oval-res_system-->


	<!--RULE -->
<axsl:template match="oval-res:system[oval-res:tests]" priority="1001" mode="M42">

		<!--ASSERT -->
<axsl:choose><axsl:when test="/oval-res:oval_results/oval-res:directives/*[@reported='true' or @reported='1']/@content='full'                                                 or /oval-res:oval_results/oval-res:directives/*[(@reported='true' or @reported='1') and not(@content)]                                                 or /oval-res:oval_results/oval-res:class_directives/*[@reported='true' or @reported='1']/@content='full'                                                 or /oval-res:oval_results/oval-res:class_directives/*[(@reported='true' or @reported='1') and not(@content)]"/><axsl:otherwise>
                                   The tests element should not be included unless full results are to be provided (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M42"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:system[not(oval-res:tests)]" priority="1000" mode="M42">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(oval-res:oval_results/oval-res:directives/*[@reported='true' or @reported='1']/@content='full')                                                  and not(/oval-res:oval_results/oval-res:directives/*[(@reported='true' or @reported='1') and not(@content)])                                                 and not(/oval-res:oval_results/oval-res:class_directives/*[@reported='true' or @reported='1']/@content='full')                                                 and not(/oval-res:oval_results/oval-res:class_directives/*[(@reported='true' or @reported='1') and not(@content)])"/><axsl:otherwise>
                                   The tests element should be included when full results are specified (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M42"/></axsl:template><axsl:template match="text()" priority="-1" mode="M42"/><axsl:template match="@*|node()" priority="-2" mode="M42"><axsl:apply-templates select="@*|*" mode="M42"/></axsl:template>

<!--PATTERN oval-res_mask_rule-->


	<!--RULE -->
<axsl:template match="/oval-res:oval_results/oval-res:results/oval-res:system/oval-sc:oval_system_characteristics/oval-sc:system_data/*/*|/oval-res:oval_results/oval-res:results/oval-res:system/oval-sc:oval_system_characteristics/oval-sc:system_data/*/*/*" priority="1000" mode="M43">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@mask) or @mask='false' or @mask='0' or .=''"/><axsl:otherwise>item <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - a value for the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity should only be supplied if the mask attribute is 'false'.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M43"/></axsl:template><axsl:template match="text()" priority="-1" mode="M43"/><axsl:template match="@*|node()" priority="-2" mode="M43"><axsl:apply-templates select="@*|*" mode="M43"/></axsl:template>

<!--PATTERN oval-res_directives-->


	<!--RULE -->
<axsl:template match="oval-res:definition[@result='true' and oval-res:criteria]" priority="1011" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_true/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_true/@reported='1')                                    and not(oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_true/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_true/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of TRUE should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_true/@content='full')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_true/@content='full')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of TRUE should contain THIN content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:definition[@result='true' and not(oval-res:criteria)]" priority="1010" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_true/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_true/@reported='1')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_true/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_true/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of TRUE should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_true/@content='thin')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_true/@content='thin')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of TRUE should contain FULL content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:definition[@result='false' and oval-res:criteria]" priority="1009" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_false/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_false/@reported='1')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_false/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_false/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of FALSE should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_false/@content='full')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_false/@content='full')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of FALSE should contain THIN content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:definition[@result='false' and not(oval-res:criteria)]" priority="1008" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_false/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_false/@reported='1')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_false/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_false/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of FALSE should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_false/@content='thin')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_false/@content='thin')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of FALSE should contain FULL content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:definition[@result='unknown' and oval-res:criteria]" priority="1007" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_unknown/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_unknown/@reported='1')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_unknown/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_unknown/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of UNKNOWN should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_unknown/@content='full')                                    and not(oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_unknown/@content='full')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of UNKNOWN should contain THIN content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:definition[@result='unknown' and not(oval-res:criteria)]" priority="1006" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_unknown/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_unknown/@reported='1')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_unknown/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_unknown/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of UNKNOWN should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_unknown/@content='thin')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_unknown/@content='thin')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of UNKNOWN should contain FULL content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:definition[@result='error' and oval-res:criteria]" priority="1005" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_error/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_error/@reported='1')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_error/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_error/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of ERROR should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_error/@content='full')                                    and not(oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_error/@content='full')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of ERROR should contain THIN content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:definition[@result='error' and not(oval-res:criteria)]" priority="1004" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_error/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_error/@reported='1')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_unknown/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_unknown/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of ERROR should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_error/@content='thin')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_error/@content='thin')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of ERROR should contain FULL content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:definition[@result='not evaluated' and oval-res:criteria]" priority="1003" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_not_evaluated/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_not_evaluated/@reported='1')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_evaluated/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_evaluated/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of NOT EVALUATED should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_not_evaluated/@content='full')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_evaluated/@content='full')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of NOT EVALUATED should contain THIN content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:definition[@result='not evaluated' and not(oval-res:criteria)]" priority="1002" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_not_evaluated/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_not_evaluated/@reported='1')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_evaluated/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_evaluated/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of NOT EVALUATED should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_not_evaluated/@content='thin')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_evaluated/@content='thin')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of NOT EVALUATED should contain FULL content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:definition[@result='not applicable' and oval-res:criteria]" priority="1001" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_not_applicable/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_not_applicable/@reported='1')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_applicable/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_applicable/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of NOT APPLICABLE should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_not_applicable/@content='full')                                    and not(oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_applicable/@content='full')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of NOT APPLICABLE should contain THIN content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-res:definition[@result='not applicable' and not(oval-res:criteria)]" priority="1000" mode="M44">

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_not_applicable/@reported='true' or /oval-res:oval_results/oval-res:directives/oval-res:definition_not_applicable/@reported='1')                                    and not(/oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_applicable/@reported='true' or /oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_applicable/@reported='1')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of NOT APPLICABLE should not be included (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="((/oval-res:oval_results/oval-res:directives/oval-res:definition_not_applicable/@content='thin')                                    and not(oval-res:oval_results/oval-res:class_directives[@class = ./@class]))                                    or (/oval-res:oval_results/oval-res:class_directives[@class = ./@class]/oval-res:definition_not_applicable/@content='thin')"/><axsl:otherwise>
                                   <axsl:text/><axsl:value-of select="@definition_id"/><axsl:text/> - definitions with a result of NOT APPLICABLE should contain FULL content (see directives)
                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template><axsl:template match="text()" priority="-1" mode="M44"/><axsl:template match="@*|node()" priority="-2" mode="M44"><axsl:apply-templates select="@*|*" mode="M44"/></axsl:template>

<!--PATTERN oval-res_testids-->


	<!--RULE -->
<axsl:template match="oval-res:test" priority="1000" mode="M45">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@test_id = ../../oval-res:definitions//oval-res:criterion/@test_ref"/><axsl:otherwise><axsl:text/><axsl:value-of select="@test_id"/><axsl:text/> - the specified test is not used in any definition's criteria<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M45"/></axsl:template><axsl:template match="text()" priority="-1" mode="M45"/><axsl:template match="@*|node()" priority="-2" mode="M45"><axsl:apply-templates select="@*|*" mode="M45"/></axsl:template>

<!--PATTERN oval_schema_version_one_core_element-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:generator" priority="1000" mode="M46">

		<!--ASSERT -->
<axsl:choose><axsl:when test="count(oval:schema_version[not(@platform)]) = 1"/><axsl:otherwise>One (and only one) schema_version element MUST be present and omit the platform attribute to represent the core version.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M46"/></axsl:template><axsl:template match="text()" priority="-1" mode="M46"/><axsl:template match="@*|node()" priority="-2" mode="M46"><axsl:apply-templates select="@*|*" mode="M46"/></axsl:template>

<!--PATTERN oval_schema_version_empty_platform-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:generator/oval:schema_version[@platform]" priority="1000" mode="M47">

		<!--REPORT -->
<axsl:if test="@platform = ''">Warning: The platform attribute should be set to the URI of the target namespace for this platform extension.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M47"/></axsl:template><axsl:template match="text()" priority="-1" mode="M47"/><axsl:template match="@*|node()" priority="-2" mode="M47"><axsl:apply-templates select="@*|*" mode="M47"/></axsl:template>

<!--PATTERN oval_schema_version_core_matches_platforms-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:generator/oval:schema_version[@platform]" priority="1000" mode="M48"><axsl:variable name="core_version_portion" select="parent::oval-def:generator/oval:schema_version[not(@platform)]"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="starts-with(.,$core_version_portion)"/><axsl:otherwise>This platform's version (<axsl:text/><axsl:value-of select="."/><axsl:text/>) MUST match the core version being used: <axsl:text/><axsl:value-of select="$core_version_portion"/><axsl:text/>.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M48"/></axsl:template><axsl:template match="text()" priority="-1" mode="M48"/><axsl:template match="@*|node()" priority="-2" mode="M48"><axsl:apply-templates select="@*|*" mode="M48"/></axsl:template>

<!--PATTERN oval_none_exist_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:tests/child::*" priority="1000" mode="M49">

		<!--REPORT -->
<axsl:if test="@check='none exist'">
                                             DEPRECATED ATTRIBUTE VALUE IN: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ATTRIBUTE VALUE:
                                        <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M49"/></axsl:template><axsl:template match="text()" priority="-1" mode="M49"/><axsl:template match="@*|node()" priority="-2" mode="M49"><axsl:apply-templates select="@*|*" mode="M49"/></axsl:template>

<!--PATTERN oval-def_empty_def_doc-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions" priority="1000" mode="M50">

		<!--ASSERT -->
<axsl:choose><axsl:when test="oval-def:definitions or oval-def:tests or oval-def:objects or oval-def:states or oval-def:variables"/><axsl:otherwise>A valid OVAL Definition document must contain at least one definitions, tests, objects, states, or variables element. The optional definitions, tests, objects, states, and variables sections define the specific characteristics that should be evaluated on a system to determine the truth values of the OVAL Definition Document. To be valid though, at least one definitions, tests, objects, states, or variables element must be present.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M50"/></axsl:template><axsl:template match="text()" priority="-1" mode="M50"/><axsl:template match="@*|node()" priority="-2" mode="M50"><axsl:apply-templates select="@*|*" mode="M50"/></axsl:template>

<!--PATTERN oval_def_notes_dep-->


	<!--RULE -->
<axsl:template match="oval-def:notes" priority="1000" mode="M51">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> parent ID: <axsl:text/><axsl:value-of select="../@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M51"/></axsl:template><axsl:template match="text()" priority="-1" mode="M51"/><axsl:template match="@*|node()" priority="-2" mode="M51"><axsl:apply-templates select="@*|*" mode="M51"/></axsl:template>

<!--PATTERN oval-def_required_criteria-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:definitions/oval-def:definition[(@deprecated='false' or @deprecated='0') or not(@deprecated)]" priority="1000" mode="M52">

		<!--ASSERT -->
<axsl:choose><axsl:when test="oval-def:criteria"/><axsl:otherwise>A valid OVAL Definition must contain a criteria unless the definition is a deprecated definition.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M52"/></axsl:template><axsl:template match="text()" priority="-1" mode="M52"/><axsl:template match="@*|node()" priority="-2" mode="M52"><axsl:apply-templates select="@*|*" mode="M52"/></axsl:template>

<!--PATTERN oval-def_test_type-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:tests/*[@check_existence='none_exist']" priority="1000" mode="M53">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(*[local-name()='state'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="@id"/><axsl:text/> - No state should be referenced when check_existence has a value of 'none_exist'.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M53"/></axsl:template><axsl:template match="text()" priority="-1" mode="M53"/><axsl:template match="@*|node()" priority="-2" mode="M53"><axsl:apply-templates select="@*|*" mode="M53"/></axsl:template>

<!--PATTERN oval-def_setobjref-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:object_reference" priority="1002" mode="M54">

		<!--ASSERT -->
<axsl:choose><axsl:when test="name(./../..) = name(ancestor::oval-def:oval_definitions/oval-def:objects/*[@id=current()])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../../@id"/><axsl:text/> - Each object referenced by the set must be of the same type as parent object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M54"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:set/oval-def:object_reference" priority="1001" mode="M54">

		<!--ASSERT -->
<axsl:choose><axsl:when test="name(./../../..) = name(ancestor::oval-def:oval_definitions/oval-def:objects/*[@id=current()])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../../../@id"/><axsl:text/> - Each object referenced by the set must be of the same type as parent object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M54"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:set/oval-def:set/oval-def:object_reference" priority="1000" mode="M54">

		<!--ASSERT -->
<axsl:choose><axsl:when test="name(./../../../..) = name(ancestor::oval-def:oval_definitions/oval-def:objects/*[@id=current()])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../../../../@id"/><axsl:text/> - Each object referenced by the set must be of the same type as parent object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M54"/></axsl:template><axsl:template match="text()" priority="-1" mode="M54"/><axsl:template match="@*|node()" priority="-2" mode="M54"><axsl:apply-templates select="@*|*" mode="M54"/></axsl:template>

<!--PATTERN oval-def_literal_component-->


	<!--RULE -->
<axsl:template match="oval-def:literal_component" priority="1000" mode="M55">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@datatype='record')"/><axsl:otherwise><axsl:text/><axsl:value-of select="ancestor::*/@id"/><axsl:text/> - The 'record' datatype is prohibited on variables.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M55"/></axsl:template><axsl:template match="text()" priority="-1" mode="M55"/><axsl:template match="@*|node()" priority="-2" mode="M55"><axsl:apply-templates select="@*|*" mode="M55"/></axsl:template>

<!--PATTERN oval-def_arithmeticfunctionrules-->


	<!--RULE -->
<axsl:template match="oval-def:arithmetic/oval-def:literal_component" priority="1001" mode="M56">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='float' or @datatype='int'"/><axsl:otherwise>A literal_component used by an arithmetic function must have a datatype of float or int.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M56"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:arithmetic/oval-def:variable_component" priority="1000" mode="M56"><axsl:variable name="var_ref" select="@var_ref"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype='float' or ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype='int'"/><axsl:otherwise>The variable referenced by the arithmetic function must have a datatype of float or int.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M56"/></axsl:template><axsl:template match="text()" priority="-1" mode="M56"/><axsl:template match="@*|node()" priority="-2" mode="M56"><axsl:apply-templates select="@*|*" mode="M56"/></axsl:template>

<!--PATTERN oval-def_beginfunctionrules-->


	<!--RULE -->
<axsl:template match="oval-def:begin/oval-def:literal_component" priority="1001" mode="M57">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@datatype) or @datatype='string'"/><axsl:otherwise>A literal_component used by the begin function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M57"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:begin/oval-def:variable_component" priority="1000" mode="M57"><axsl:variable name="var_ref" select="@var_ref"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'"/><axsl:otherwise>The variable referenced by the begin function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M57"/></axsl:template><axsl:template match="text()" priority="-1" mode="M57"/><axsl:template match="@*|node()" priority="-2" mode="M57"><axsl:apply-templates select="@*|*" mode="M57"/></axsl:template>

<!--PATTERN oval-def_concatfunctionrules-->


	<!--RULE -->
<axsl:template match="oval-def:concat/oval-def:literal_component" priority="1001" mode="M58">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@datatype) or @datatype='string'"/><axsl:otherwise>A literal_component used by the concat function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M58"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:concat/oval-def:variable_component" priority="1000" mode="M58"><axsl:variable name="var_ref" select="@var_ref"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'"/><axsl:otherwise>The variable referenced by the concat function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M58"/></axsl:template><axsl:template match="text()" priority="-1" mode="M58"/><axsl:template match="@*|node()" priority="-2" mode="M58"><axsl:apply-templates select="@*|*" mode="M58"/></axsl:template>

<!--PATTERN oval-def_endfunctionrules-->


	<!--RULE -->
<axsl:template match="oval-def:end/oval-def:literal_component" priority="1001" mode="M59">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@datatype) or @datatype='string'"/><axsl:otherwise>A literal_component used by the end function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M59"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:end/oval-def:variable_component" priority="1000" mode="M59"><axsl:variable name="var_ref" select="@var_ref"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'"/><axsl:otherwise>The variable referenced by the end function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M59"/></axsl:template><axsl:template match="text()" priority="-1" mode="M59"/><axsl:template match="@*|node()" priority="-2" mode="M59"><axsl:apply-templates select="@*|*" mode="M59"/></axsl:template>

<!--PATTERN oval-def_escaperegexfunctionrules-->


	<!--RULE -->
<axsl:template match="oval-def:escape_regex/oval-def:literal_component" priority="1001" mode="M60">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@datatype) or @datatype='string'"/><axsl:otherwise>A literal_component used by the escape_regex function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M60"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:escape_regex/oval-def:variable_component" priority="1000" mode="M60"><axsl:variable name="var_ref" select="@var_ref"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'"/><axsl:otherwise>The variable referenced by the escape_regex function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M60"/></axsl:template><axsl:template match="text()" priority="-1" mode="M60"/><axsl:template match="@*|node()" priority="-2" mode="M60"><axsl:apply-templates select="@*|*" mode="M60"/></axsl:template>

<!--PATTERN oval-def_splitfunctionrules-->


	<!--RULE -->
<axsl:template match="oval-def:split/oval-def:literal_component" priority="1001" mode="M61">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@datatype) or @datatype='string'"/><axsl:otherwise>A literal_component used by the split function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M61"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:split/oval-def:variable_component" priority="1000" mode="M61"><axsl:variable name="var_ref" select="@var_ref"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'"/><axsl:otherwise>The variable referenced by the split function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M61"/></axsl:template><axsl:template match="text()" priority="-1" mode="M61"/><axsl:template match="@*|node()" priority="-2" mode="M61"><axsl:apply-templates select="@*|*" mode="M61"/></axsl:template>

<!--PATTERN oval-def_substringfunctionrules-->


	<!--RULE -->
<axsl:template match="oval-def:substring/oval-def:literal_component" priority="1001" mode="M62">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@datatype) or @datatype='string'"/><axsl:otherwise>A literal_component used by the substring function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M62"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:substring/oval-def:variable_component" priority="1000" mode="M62"><axsl:variable name="var_ref" select="@var_ref"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'"/><axsl:otherwise>The variable referenced by the substring function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M62"/></axsl:template><axsl:template match="text()" priority="-1" mode="M62"/><axsl:template match="@*|node()" priority="-2" mode="M62"><axsl:apply-templates select="@*|*" mode="M62"/></axsl:template>

<!--PATTERN oval-def_timedifferencefunctionrules-->


	<!--RULE -->
<axsl:template match="oval-def:time_difference/oval-def:literal_component" priority="1001" mode="M63">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@datatype) or @datatype='string' or @datatype='int'"/><axsl:otherwise>A literal_component used by the time_difference function must have a datatype of string or int.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M63"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:time_difference/oval-def:variable_component" priority="1000" mode="M63"><axsl:variable name="var_ref" select="@var_ref"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype='string' or ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype='int'"/><axsl:otherwise>The variable referenced by the time_difference function must have a datatype of string or int.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M63"/></axsl:template><axsl:template match="text()" priority="-1" mode="M63"/><axsl:template match="@*|node()" priority="-2" mode="M63"><axsl:apply-templates select="@*|*" mode="M63"/></axsl:template>

<!--PATTERN oval-def_regexcapturefunctionrules-->


	<!--RULE -->
<axsl:template match="oval-def:regex_capture/oval-def:literal_component" priority="1001" mode="M64">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@datatype) or @datatype='string'"/><axsl:otherwise>A literal_component used by the regex_capture function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M64"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:regex_capture/oval-def:variable_component" priority="1000" mode="M64"><axsl:variable name="var_ref" select="@var_ref"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'"/><axsl:otherwise>The variable referenced by the regex_capture function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M64"/></axsl:template><axsl:template match="text()" priority="-1" mode="M64"/><axsl:template match="@*|node()" priority="-2" mode="M64"><axsl:apply-templates select="@*|*" mode="M64"/></axsl:template>

<!--PATTERN oval-def_globtoregexfunctionrules-->


	<!--RULE -->
<axsl:template match="oval-def:glob_to_regex/oval-def:literal_component" priority="1001" mode="M65">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@datatype) or @datatype='string'"/><axsl:otherwise>A literal_component used by the glob_to_regex function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M65"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:glob_to_regex/oval-def:variable_component" priority="1000" mode="M65"><axsl:variable name="var_ref" select="@var_ref"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'"/><axsl:otherwise>The variable referenced by the glob_to_regex function must have a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M65"/></axsl:template><axsl:template match="text()" priority="-1" mode="M65"/><axsl:template match="@*|node()" priority="-2" mode="M65"><axsl:apply-templates select="@*|*" mode="M65"/></axsl:template>

<!--PATTERN oval-def_definition_entity_rules-->


	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@var_ref]|oval-def:objects/*/*/*[@var_ref]|oval-def:states/*/*[@var_ref]|oval-def:states/*/*/*[@var_ref]" priority="1018" mode="M66"><axsl:variable name="var_ref" select="@var_ref"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test=".=''"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - a var_ref has been supplied for the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity so no value should be provided<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="( (not(@datatype)) and ('string' = ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype) ) or (@datatype = ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype)"/><axsl:otherwise><axsl:text/><axsl:value-of select="$var_ref"/><axsl:text/> - inconsistent datatype between the variable and an associated var_ref<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@var_ref]|oval-def:objects/*/*/*[@var_ref]" priority="1017" mode="M66">

		<!--REPORT -->
<axsl:if test="not(@var_check)"><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - a var_ref has been supplied for the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity so a var_check should also be provided<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@var_check]|oval-def:objects/*/*/*[@var_check]" priority="1016" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@var_ref"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - a var_check has been supplied for the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity so a var_ref must also be provided<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:states/*/*[@var_ref]|oval-def:states/*/*/*[@var_ref]" priority="1015" mode="M66">

		<!--REPORT -->
<axsl:if test="not(@var_check)"><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - a var_ref has been supplied for the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity so a var_check should also be provided<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:states/*/*[@var_check]|oval-def:states/*/*/*[@var_check]" priority="1014" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@var_ref"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - a var_check has been supplied for the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity so a var_ref must also be provided<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[not(@datatype)]|oval-def:objects/*/*/*[not(@datatype)]|oval-def:states/*/*[not(@datatype)]|oval-def:states/*/*/*[not(@datatype)]" priority="1013" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='case insensitive equals' or @operation='case insensitive not equal' or @operation='pattern match'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given the lack of a declared datatype (hence a default datatype of string).<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='binary']|oval-def:objects/*/*/*[@datatype='binary']|oval-def:states/*/*[@datatype='binary']|oval-def:states/*/*/*[@datatype='binary']" priority="1012" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of binary.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='boolean']|oval-def:objects/*/*/*[@datatype='boolean']|oval-def:states/*/*[@datatype='boolean']|oval-def:states/*/*/*[@datatype='boolean']" priority="1011" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of boolean.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='evr_string']|oval-def:objects/*/*/*[@datatype='evr_string']|oval-def:states/*/*[@datatype='evr_string']|oval-def:states/*/*/*[@datatype='evr_string']" priority="1010" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal' or  @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of evr_string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='debian_evr_string']|oval-def:objects/*/*/*[@datatype='debian_evr_string']|oval-def:states/*/*[@datatype='debian_evr_string']|oval-def:states/*/*/*[@datatype='debian_evr_string']" priority="1009" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal' or  @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of debian_evr_string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='fileset_revision']|oval-def:objects/*/*/*[@datatype='fileset_revision']|oval-def:states/*/*[@datatype='fileset_revision']|oval-def:states/*/*/*[@datatype='fileset_revision']" priority="1008" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal' or  @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of fileset_revision.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='float']|oval-def:objects/*/*/*[@datatype='float']|oval-def:states/*/*[@datatype='float']|oval-def:states/*/*/*[@datatype='float']" priority="1007" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of float.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='ios_version']|oval-def:objects/*/*/*[@datatype='ios_version']|oval-def:states/*/*[@datatype='ios_version']|oval-def:states/*/*/*[@datatype='ios_version']" priority="1006" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of ios_version.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='int']|oval-def:objects/*/*/*[@datatype='int']|oval-def:states/*/*[@datatype='int']|oval-def:states/*/*/*[@datatype='int']" priority="1005" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of int.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='ipv4_address']|oval-def:objects/*/*/*[@datatype='ipv4_address']|oval-def:states/*/*[@datatype='ipv4_address']|oval-def:states/*/*/*[@datatype='ipv4_address']" priority="1004" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='subset of' or @operation='superset of'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of ipv4_address.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='ipv6_address']|oval-def:objects/*/*/*[@datatype='ipv6_address']|oval-def:states/*/*[@datatype='ipv6_address']|oval-def:states/*/*/*[@datatype='ipv6_address']" priority="1003" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='subset of' or @operation='superset of'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of ipv6_address.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='string']|oval-def:objects/*/*/*[@datatype='string']|oval-def:states/*/*[@datatype='string']|oval-def:states/*/*/*[@datatype='string']" priority="1002" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='case insensitive equals' or @operation='case insensitive not equal' or @operation='pattern match'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of string.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='version']|oval-def:objects/*/*/*[@datatype='version']|oval-def:states/*/*[@datatype='version']|oval-def:states/*/*/*[@datatype='version']" priority="1001" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of version.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='record']|oval-def:states/*/*[@datatype='record']" priority="1000" mode="M66">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of '<axsl:text/><axsl:value-of select="@operation"/><axsl:text/>' for the operation attribute of the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is not valid given a datatype of record.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template><axsl:template match="text()" priority="-1" mode="M66"/><axsl:template match="@*|node()" priority="-2" mode="M66"><axsl:apply-templates select="@*|*" mode="M66"/></axsl:template>

<!--PATTERN oval-def_no_var_ref_with_records-->


	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[@datatype='record']|oval-def:states/*/*[@datatype='record']" priority="1000" mode="M67">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@var_ref)"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The use of var_ref is prohibited when the datatype is 'record'.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M67"/></axsl:template><axsl:template match="text()" priority="-1" mode="M67"/><axsl:template match="@*|node()" priority="-2" mode="M67"><axsl:apply-templates select="@*|*" mode="M67"/></axsl:template>

<!--PATTERN oval-def_definition_entity_type_check_rules-->


	<!--RULE -->
<axsl:template match="oval-def:objects/*/*[not((@xsi:nil='1' or @xsi:nil='true')) and not(@var_ref) and @datatype='int']|oval-def:objects/*/*/*[not(@var_ref) and @datatype='int']|oval-def:states/*/*[not((@xsi:nil='1' or @xsi:nil='true')) and not(@var_ref) and @datatype='int']|oval-def:states/*/*/*[not(@var_ref) and @datatype='int']" priority="1000" mode="M68">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'.'))) and (number(.) = floor(.))"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The datatype for the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is 'int' but the value is not an integer.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M68"/></axsl:template><axsl:template match="text()" priority="-1" mode="M68"/><axsl:template match="@*|node()" priority="-2" mode="M68"><axsl:apply-templates select="@*|*" mode="M68"/></axsl:template>

<!--PATTERN oval-sc_entity_rules-->


	<!--RULE -->
<axsl:template match="oval-sc:system_data/*/*|oval-sc:system_data/*/*/*" priority="1001" mode="M69">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@status) or @status='exists' or .=''"/><axsl:otherwise>Warning: item <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - a value for the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity should only be supplied if the status attribute is 'exists'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M69"/></axsl:template>

	<!--RULE -->
<axsl:template match="oval-sc:system_data/*/*[not((@xsi:nil='1' or @xsi:nil='true')) and @datatype='int']|oval-sc:system_data/*/*/*[not((@xsi:nil='1' or @xsi:nil='true')) and @datatype='int']" priority="1000" mode="M69">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'.'))) and (number(.) = floor(.))"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - The datatype for the <axsl:text/><axsl:value-of select="name()"/><axsl:text/> entity is 'int' but the value is not an integer.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M69"/></axsl:template><axsl:template match="text()" priority="-1" mode="M69"/><axsl:template match="@*|node()" priority="-2" mode="M69"><axsl:apply-templates select="@*|*" mode="M69"/></axsl:template>

<!--PATTERN aix-def_interimfixtst-->


	<!--RULE -->
<axsl:template match="aix-def:interim_fix_test/aix-def:object" priority="1001" mode="M70">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:interim_fix_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a <axsl:text/><axsl:value-of select="name(..)"/><axsl:text/> must reference a interim_fix_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M70"/></axsl:template>

	<!--RULE -->
<axsl:template match="aix-def:interim_fix_test/aix-def:state" priority="1000" mode="M70">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:interim_fix_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a <axsl:text/><axsl:value-of select="name(..)"/><axsl:text/> must reference a interim_fix_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M70"/></axsl:template><axsl:template match="text()" priority="-1" mode="M70"/><axsl:template match="@*|node()" priority="-2" mode="M70"><axsl:apply-templates select="@*|*" mode="M70"/></axsl:template>

<!--PATTERN aix-def_interim_fix_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="aix-def:interim_fix_object//oval-def:filter" priority="1000" mode="M71"><axsl:variable name="parent_object" select="ancestor::aix-def:interim_fix_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#aix') and ($state_name='interim_fix_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M71"/></axsl:template><axsl:template match="text()" priority="-1" mode="M71"/><axsl:template match="@*|node()" priority="-2" mode="M71"><axsl:apply-templates select="@*|*" mode="M71"/></axsl:template>

<!--PATTERN aix-def_filesettst-->


	<!--RULE -->
<axsl:template match="aix-def:fileset_test/aix-def:object" priority="1001" mode="M72">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:fileset_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a fileset_test must reference a fileset_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M72"/></axsl:template>

	<!--RULE -->
<axsl:template match="aix-def:fileset_test/aix-def:state" priority="1000" mode="M72">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:fileset_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a fileset_test must reference a fileset_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M72"/></axsl:template><axsl:template match="text()" priority="-1" mode="M72"/><axsl:template match="@*|node()" priority="-2" mode="M72"><axsl:apply-templates select="@*|*" mode="M72"/></axsl:template>

<!--PATTERN aix-def_fileset_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="aix-def:fileset_object//oval-def:filter" priority="1000" mode="M73"><axsl:variable name="parent_object" select="ancestor::aix-def:fileset_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#aix') and ($state_name='fileset_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M73"/></axsl:template><axsl:template match="text()" priority="-1" mode="M73"/><axsl:template match="@*|node()" priority="-2" mode="M73"><axsl:apply-templates select="@*|*" mode="M73"/></axsl:template>

<!--PATTERN aix-def_fixtst-->


	<!--RULE -->
<axsl:template match="aix-def:fix_test/aix-def:object" priority="1001" mode="M74">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:fix_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a fix_test must reference a fix_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M74"/></axsl:template>

	<!--RULE -->
<axsl:template match="aix-def:fix_test/aix-def:state" priority="1000" mode="M74">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:fix_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a fix_test must reference a fix_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M74"/></axsl:template><axsl:template match="text()" priority="-1" mode="M74"/><axsl:template match="@*|node()" priority="-2" mode="M74"><axsl:apply-templates select="@*|*" mode="M74"/></axsl:template>

<!--PATTERN aix-def_fix_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="aix-def:fix_object//oval-def:filter" priority="1000" mode="M75"><axsl:variable name="parent_object" select="ancestor::aix-def:fix_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#aix') and ($state_name='fix_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M75"/></axsl:template><axsl:template match="text()" priority="-1" mode="M75"/><axsl:template match="@*|node()" priority="-2" mode="M75"><axsl:apply-templates select="@*|*" mode="M75"/></axsl:template>

<!--PATTERN aix-def_notst-->


	<!--RULE -->
<axsl:template match="aix-def:no_test/aix-def:object" priority="1001" mode="M76">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:no_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a <axsl:text/><axsl:value-of select="name(..)"/><axsl:text/> must reference a no_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M76"/></axsl:template>

	<!--RULE -->
<axsl:template match="aix-def:no_test/aix-def:state" priority="1000" mode="M76">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:no_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a <axsl:text/><axsl:value-of select="name(..)"/><axsl:text/> must reference a no_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M76"/></axsl:template><axsl:template match="text()" priority="-1" mode="M76"/><axsl:template match="@*|node()" priority="-2" mode="M76"><axsl:apply-templates select="@*|*" mode="M76"/></axsl:template>

<!--PATTERN aix-def_osleveltst-->


	<!--RULE -->
<axsl:template match="aix-def:oslevel_test/aix-def:object" priority="1001" mode="M77">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:oslevel_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a oslevel_test must reference a oslevel_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M77"/></axsl:template>

	<!--RULE -->
<axsl:template match="aix-def:oslevel_test/aix-def:state" priority="1000" mode="M77">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:oslevel_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a oslevel_test must reference a oslevel_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M77"/></axsl:template><axsl:template match="text()" priority="-1" mode="M77"/><axsl:template match="@*|node()" priority="-2" mode="M77"><axsl:apply-templates select="@*|*" mode="M77"/></axsl:template>

<!--PATTERN android-def_appmanager_test-->


	<!--RULE -->
<axsl:template match="android-def:appmanager_test/android-def:object" priority="1001" mode="M78">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:appmanager_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an appmanager_test must reference an appmanager_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M78"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:appmanager_test/android-def:state" priority="1000" mode="M78">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:appmanager_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an appmanager_test must reference an appmanager_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M78"/></axsl:template><axsl:template match="text()" priority="-1" mode="M78"/><axsl:template match="@*|node()" priority="-2" mode="M78"><axsl:apply-templates select="@*|*" mode="M78"/></axsl:template>

<!--PATTERN android-def_appmanager_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="android-def:appmanager_object//oval-def:filter" priority="1000" mode="M79"><axsl:variable name="parent_object" select="ancestor::android-def:appmanager_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#android') and ($state_name='appmanager_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M79"/></axsl:template><axsl:template match="text()" priority="-1" mode="M79"/><axsl:template match="@*|node()" priority="-2" mode="M79"><axsl:apply-templates select="@*|*" mode="M79"/></axsl:template>

<!--PATTERN android-def_bluetooth_test-->


	<!--RULE -->
<axsl:template match="android-def:bluetooth_test/android-def:object" priority="1001" mode="M80">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:bluetooth_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an bluetooth_test must reference an bluetooth_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M80"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:bluetooth_test/android-def:state" priority="1000" mode="M80">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:bluetooth_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an bluetooth_test must reference an bluetooth_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M80"/></axsl:template><axsl:template match="text()" priority="-1" mode="M80"/><axsl:template match="@*|node()" priority="-2" mode="M80"><axsl:apply-templates select="@*|*" mode="M80"/></axsl:template>

<!--PATTERN android-def_cmrtst-->


	<!--RULE -->
<axsl:template match="android-def:camera_test/android-def:object" priority="1001" mode="M81">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:camera_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a camera_test must reference a camera_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M81"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:camera_test/android-def:state" priority="1000" mode="M81">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:camera_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a camera_test must reference a camera_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M81"/></axsl:template><axsl:template match="text()" priority="-1" mode="M81"/><axsl:template match="@*|node()" priority="-2" mode="M81"><axsl:apply-templates select="@*|*" mode="M81"/></axsl:template>

<!--PATTERN android-def_certtst-->


	<!--RULE -->
<axsl:template match="android-def:certificate_test/android-def:object" priority="1001" mode="M82">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:certificate_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a certificate_test must reference a certificate_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M82"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:certificate_test/android-def:state" priority="1000" mode="M82">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:certificate_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a certificate_test must reference a certificate_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M82"/></axsl:template><axsl:template match="text()" priority="-1" mode="M82"/><axsl:template match="@*|node()" priority="-2" mode="M82"><axsl:apply-templates select="@*|*" mode="M82"/></axsl:template>

<!--PATTERN android-def_devicesettings_test-->


	<!--RULE -->
<axsl:template match="android-def:devicesettings_test/android-def:object" priority="1001" mode="M83">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:devicesettings_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an devicesettings_test must reference an devicesettings_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M83"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:devicesettings_test/android-def:state" priority="1000" mode="M83">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:devicesettings_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an devicesettings_test must reference an devicesettings_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M83"/></axsl:template><axsl:template match="text()" priority="-1" mode="M83"/><axsl:template match="@*|node()" priority="-2" mode="M83"><axsl:apply-templates select="@*|*" mode="M83"/></axsl:template>

<!--PATTERN android-def_encryptiontst-->


	<!--RULE -->
<axsl:template match="android-def:encryption_test/android-def:object" priority="1001" mode="M84">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:encryption_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a encryption_test must reference a encryption_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M84"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:encryption_test/android-def:state" priority="1000" mode="M84">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:encryption_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a encryption_test must reference a encryption_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M84"/></axsl:template><axsl:template match="text()" priority="-1" mode="M84"/><axsl:template match="@*|node()" priority="-2" mode="M84"><axsl:apply-templates select="@*|*" mode="M84"/></axsl:template>

<!--PATTERN android-def_locationservice_test-->


	<!--RULE -->
<axsl:template match="android-def:locationservice_test/android-def:object" priority="1001" mode="M85">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:locationservice_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an locationservice_test must reference an locationservice_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M85"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:locationservice_test/android-def:state" priority="1000" mode="M85">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:locationservice_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an locationservice_test must reference an locationservice_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M85"/></axsl:template><axsl:template match="text()" priority="-1" mode="M85"/><axsl:template match="@*|node()" priority="-2" mode="M85"><axsl:apply-templates select="@*|*" mode="M85"/></axsl:template>

<!--PATTERN android-def_network_test-->


	<!--RULE -->
<axsl:template match="android-def:network_test/android-def:object" priority="1001" mode="M86">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:network_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an network_test must reference an network_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M86"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:network_test/android-def:state" priority="1000" mode="M86">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:network_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an network_test must reference an network_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M86"/></axsl:template><axsl:template match="text()" priority="-1" mode="M86"/><axsl:template match="@*|node()" priority="-2" mode="M86"><axsl:apply-templates select="@*|*" mode="M86"/></axsl:template>

<!--PATTERN android-def_ptst-->


	<!--RULE -->
<axsl:template match="android-def:password_test/android-def:object" priority="1001" mode="M87">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:password_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a password_test must reference a password_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M87"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:password_test/android-def:state" priority="1000" mode="M87">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:password_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a password_test must reference a password_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M87"/></axsl:template><axsl:template match="text()" priority="-1" mode="M87"/><axsl:template match="@*|node()" priority="-2" mode="M87"><axsl:apply-templates select="@*|*" mode="M87"/></axsl:template>

<!--PATTERN android-def_systemdetails_test-->


	<!--RULE -->
<axsl:template match="android-def:systemdetails_test/android-def:object" priority="1001" mode="M88">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:systemdetails_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of systemdetails_test must reference systemdetails_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M88"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:systemdetails_test/android-def:state" priority="1000" mode="M88">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:systemdetails_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an systemdetails_test must reference an systemdetails_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M88"/></axsl:template><axsl:template match="text()" priority="-1" mode="M88"/><axsl:template match="@*|node()" priority="-2" mode="M88"><axsl:apply-templates select="@*|*" mode="M88"/></axsl:template>

<!--PATTERN android-def_wifi_test-->


	<!--RULE -->
<axsl:template match="android-def:wifi_test/android-def:object" priority="1001" mode="M89">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:wifi_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an wifi_test must reference an wifi_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M89"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:wifi_test/android-def:state" priority="1000" mode="M89">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:wifi_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an wifi_test must reference an wifi_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M89"/></axsl:template><axsl:template match="text()" priority="-1" mode="M89"/><axsl:template match="@*|node()" priority="-2" mode="M89"><axsl:apply-templates select="@*|*" mode="M89"/></axsl:template>

<!--PATTERN android-def_wifinetwork_test-->


	<!--RULE -->
<axsl:template match="android-def:wifinetwork_test/android-def:object" priority="1001" mode="M90">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:wifinetwork_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an wifinetwork_test must reference an wifinetwork_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M90"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:wifinetwork_test/android-def:state" priority="1000" mode="M90">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:wifinetwork_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an wifinetwork_test must reference an wifinetwork_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M90"/></axsl:template><axsl:template match="text()" priority="-1" mode="M90"/><axsl:template match="@*|node()" priority="-2" mode="M90"><axsl:apply-templates select="@*|*" mode="M90"/></axsl:template>

<!--PATTERN android-def_wifinetwork_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="android-def:wifinetwork_object//oval-def:filter" priority="1000" mode="M91"><axsl:variable name="parent_object" select="ancestor::android-def:wifinetwork_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#android') and ($state_name='wifinetwork_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M91"/></axsl:template><axsl:template match="text()" priority="-1" mode="M91"/><axsl:template match="@*|node()" priority="-2" mode="M91"><axsl:apply-templates select="@*|*" mode="M91"/></axsl:template>

<!--PATTERN android-def_teltst-->


	<!--RULE -->
<axsl:template match="android-def:telephony_test/android-def:object" priority="1001" mode="M92">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/android-def:telephony_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a telephony_test must reference a telephony_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M92"/></axsl:template>

	<!--RULE -->
<axsl:template match="android-def:telephony_test/android-def:state" priority="1000" mode="M92">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/android-def:telephony_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a telephony_test must reference a telephony_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M92"/></axsl:template><axsl:template match="text()" priority="-1" mode="M92"/><axsl:template match="@*|node()" priority="-2" mode="M92"><axsl:apply-templates select="@*|*" mode="M92"/></axsl:template>

<!--PATTERN apache-def_httpd_test_dep-->


	<!--RULE -->
<axsl:template match="apache-def:httpd_test" priority="1000" mode="M93">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M93"/></axsl:template><axsl:template match="text()" priority="-1" mode="M93"/><axsl:template match="@*|node()" priority="-2" mode="M93"><axsl:apply-templates select="@*|*" mode="M93"/></axsl:template>

<!--PATTERN apache-def_httpdtst-->


	<!--RULE -->
<axsl:template match="apache-def:httpd_test/apache-def:object" priority="1001" mode="M94">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/apache-def:httpd_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a httpd_test must reference a httpd_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M94"/></axsl:template>

	<!--RULE -->
<axsl:template match="apache-def:httpd_test/apache-def:state" priority="1000" mode="M94">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/apache-def:httpd_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a httpd_test must reference a httpd_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M94"/></axsl:template><axsl:template match="text()" priority="-1" mode="M94"/><axsl:template match="@*|node()" priority="-2" mode="M94"><axsl:apply-templates select="@*|*" mode="M94"/></axsl:template>

<!--PATTERN apache-def_httpd_object_dep-->


	<!--RULE -->
<axsl:template match="apache-def:httpd_object" priority="1000" mode="M95">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M95"/></axsl:template><axsl:template match="text()" priority="-1" mode="M95"/><axsl:template match="@*|node()" priority="-2" mode="M95"><axsl:apply-templates select="@*|*" mode="M95"/></axsl:template>

<!--PATTERN apache-def_httpd_state_dep-->


	<!--RULE -->
<axsl:template match="apache-def:httpd_state" priority="1000" mode="M96">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M96"/></axsl:template><axsl:template match="text()" priority="-1" mode="M96"/><axsl:template match="@*|node()" priority="-2" mode="M96"><axsl:apply-templates select="@*|*" mode="M96"/></axsl:template>

<!--PATTERN apple-ios-def_globalrestrictions_test-->


	<!--RULE -->
<axsl:template match="apple-ios-def:globalrestrictions_test/apple-ios-def:object" priority="1001" mode="M97">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/apple-ios-def:globalrestrictions_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a globalrestrictions_test must reference a globalrestrictions_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M97"/></axsl:template>

	<!--RULE -->
<axsl:template match="apple-ios-def:globalrestrictions_test/apple-ios-def:state" priority="1000" mode="M97">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/apple-ios-def:globalrestrictions_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a globalrestrictions_test must reference a globalrestrictions_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M97"/></axsl:template><axsl:template match="text()" priority="-1" mode="M97"/><axsl:template match="@*|node()" priority="-2" mode="M97"><axsl:apply-templates select="@*|*" mode="M97"/></axsl:template>

<!--PATTERN apple-ios-def_passcodepolicy_test-->


	<!--RULE -->
<axsl:template match="apple-ios-def:passcodepolicy_test/apple-ios-def:object" priority="1001" mode="M98">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/apple-ios-def:passcodepolicy_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a passcodepolicy_test must reference a passcodepolicy_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M98"/></axsl:template>

	<!--RULE -->
<axsl:template match="apple-ios-def:passcodepolicy_test/apple-ios-def:state" priority="1000" mode="M98">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/apple-ios-def:passcodepolicy_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a passcodepolicy_test must reference a passcodepolicy_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M98"/></axsl:template><axsl:template match="text()" priority="-1" mode="M98"/><axsl:template match="@*|node()" priority="-2" mode="M98"><axsl:apply-templates select="@*|*" mode="M98"/></axsl:template>

<!--PATTERN apple-ios-def_profile_test-->


	<!--RULE -->
<axsl:template match="apple-ios-def:profile_test/apple-ios-def:object" priority="1001" mode="M99">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/apple-ios-def:profile_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a profile_test must reference a profile_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M99"/></axsl:template>

	<!--RULE -->
<axsl:template match="apple-ios-def:profile_test/apple-ios-def:state" priority="1000" mode="M99">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/apple-ios-def:profile_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a profile_test must reference a profile_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M99"/></axsl:template><axsl:template match="text()" priority="-1" mode="M99"/><axsl:template match="@*|node()" priority="-2" mode="M99"><axsl:apply-templates select="@*|*" mode="M99"/></axsl:template>

<!--PATTERN apple-ios-def_profile_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="apple-ios-def:profile_object//oval-def:filter" priority="1000" mode="M100"><axsl:variable name="parent_object" select="ancestor::apple-ios-def:profile_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#apple-ios') and ($state_name='profile_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M100"/></axsl:template><axsl:template match="text()" priority="-1" mode="M100"/><axsl:template match="@*|node()" priority="-2" mode="M100"><axsl:apply-templates select="@*|*" mode="M100"/></axsl:template>

<!--PATTERN asa_acltst-->


	<!--RULE -->
<axsl:template match="asa-def:acl_test/asa-def:object" priority="1001" mode="M101">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/asa-def:acl_object/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a acl_test must reference a acl_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M101"/></axsl:template>

	<!--RULE -->
<axsl:template match="asa-def:acl_test/asa-def:state" priority="1000" mode="M101">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/asa-def:acl_state/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a acl_test must reference a acl_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M101"/></axsl:template><axsl:template match="text()" priority="-1" mode="M101"/><axsl:template match="@*|node()" priority="-2" mode="M101"><axsl:apply-templates select="@*|*" mode="M101"/></axsl:template>

<!--PATTERN asa_acl_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="asa-def:acl_object//oval-def:filter" priority="1000" mode="M102"><axsl:variable name="parent_object" select="ancestor::asa-def:acl_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#asa') and ($state_name='acl_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M102"/></axsl:template><axsl:template match="text()" priority="-1" mode="M102"/><axsl:template match="@*|node()" priority="-2" mode="M102"><axsl:apply-templates select="@*|*" mode="M102"/></axsl:template>

<!--PATTERN asa-class_maptst-->


	<!--RULE -->
<axsl:template match="asa-def:class_map_test/asa-def:object" priority="1001" mode="M103">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/asa-def:class_map_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an class_map_test must reference an class_map_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M103"/></axsl:template>

	<!--RULE -->
<axsl:template match="asa-def:class_map_test/asa-def:state" priority="1000" mode="M103">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/asa-def:class_map_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an class_map_test must reference an class_map_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M103"/></axsl:template><axsl:template match="text()" priority="-1" mode="M103"/><axsl:template match="@*|node()" priority="-2" mode="M103"><axsl:apply-templates select="@*|*" mode="M103"/></axsl:template>

<!--PATTERN asa_class_map_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="asa-def:class_map_object//oval-def:filter" priority="1000" mode="M104"><axsl:variable name="parent_object" select="ancestor::asa-def:class_map_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#asa') and ($state_name='class_map_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M104"/></axsl:template><axsl:template match="text()" priority="-1" mode="M104"/><axsl:template match="@*|node()" priority="-2" mode="M104"><axsl:apply-templates select="@*|*" mode="M104"/></axsl:template>

<!--PATTERN asa-def_interfacetst-->


	<!--RULE -->
<axsl:template match="asa-def:interface_test/asa-def:object" priority="1001" mode="M105">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/asa-def:interface_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an interface_test must reference an interface_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M105"/></axsl:template>

	<!--RULE -->
<axsl:template match="asa-def:interface_test/asa-def:state" priority="1000" mode="M105">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/asa-def:interface_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an interface_test must reference an interface_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M105"/></axsl:template><axsl:template match="text()" priority="-1" mode="M105"/><axsl:template match="@*|node()" priority="-2" mode="M105"><axsl:apply-templates select="@*|*" mode="M105"/></axsl:template>

<!--PATTERN asa_interface_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="asa-def:interface_object//oval-def:filter" priority="1000" mode="M106"><axsl:variable name="parent_object" select="ancestor::asa-def:interface_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#asa') and ($state_name='interface_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M106"/></axsl:template><axsl:template match="text()" priority="-1" mode="M106"/><axsl:template match="@*|node()" priority="-2" mode="M106"><axsl:apply-templates select="@*|*" mode="M106"/></axsl:template>

<!--PATTERN asa-def_interfaceste_urpf_command_dep-->


	<!--RULE -->
<axsl:template match="asa-def:interface_state/asa-def:urpf_command" priority="1000" mode="M107">

		<!--REPORT -->
<axsl:if test="true()">Warning: DEPRECATED ENTITY: <axsl:text/><axsl:value-of select="name()"/><axsl:text/>. This entity has been deprecated because it was replaced by the ipv4_urpf_command and ipv6_urpf_command entities.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M107"/></axsl:template><axsl:template match="text()" priority="-1" mode="M107"/><axsl:template match="@*|node()" priority="-2" mode="M107"><axsl:apply-templates select="@*|*" mode="M107"/></axsl:template>

<!--PATTERN asa_linetst-->


	<!--RULE -->
<axsl:template match="asa-def:line_test/asa-def:object" priority="1001" mode="M108">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/asa-def:line_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a line_test must reference a line_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M108"/></axsl:template>

	<!--RULE -->
<axsl:template match="asa-def:line_test/asa-def:state" priority="1000" mode="M108">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/asa-def:line_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a line_test must reference a line_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M108"/></axsl:template><axsl:template match="text()" priority="-1" mode="M108"/><axsl:template match="@*|node()" priority="-2" mode="M108"><axsl:apply-templates select="@*|*" mode="M108"/></axsl:template>

<!--PATTERN asa_line_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="asa-def:line_object//oval-def:filter" priority="1000" mode="M109"><axsl:variable name="parent_object" select="ancestor::asa-def:line_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#asa') and ($state_name='line_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M109"/></axsl:template><axsl:template match="text()" priority="-1" mode="M109"/><axsl:template match="@*|node()" priority="-2" mode="M109"><axsl:apply-templates select="@*|*" mode="M109"/></axsl:template>

<!--PATTERN asa-policy_maptst-->


	<!--RULE -->
<axsl:template match="asa-def:policy_map_test/asa-def:object" priority="1001" mode="M110">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/asa-def:policy_map_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an policy_map_test must reference an policy_map_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M110"/></axsl:template>

	<!--RULE -->
<axsl:template match="asa-def:policy_map_test/asa-def:state" priority="1000" mode="M110">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/asa-def:policy_map_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an policy_map_test must reference an policy_map_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M110"/></axsl:template><axsl:template match="text()" priority="-1" mode="M110"/><axsl:template match="@*|node()" priority="-2" mode="M110"><axsl:apply-templates select="@*|*" mode="M110"/></axsl:template>

<!--PATTERN asa_policy_map_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="asa-def:policy_map_object//oval-def:filter" priority="1000" mode="M111"><axsl:variable name="parent_object" select="ancestor::asa-def:policy_map_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#asa') and ($state_name='policy_map_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M111"/></axsl:template><axsl:template match="text()" priority="-1" mode="M111"/><axsl:template match="@*|node()" priority="-2" mode="M111"><axsl:apply-templates select="@*|*" mode="M111"/></axsl:template>

<!--PATTERN asa-service_policytst-->


	<!--RULE -->
<axsl:template match="asa-def:service_policy_test/asa-def:object" priority="1001" mode="M112">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/asa-def:service_policy_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an service_policy_test must reference an service_policy_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M112"/></axsl:template>

	<!--RULE -->
<axsl:template match="asa-def:service_policy_test/asa-def:state" priority="1000" mode="M112">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/asa-def:service_policy_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an service_policy_test must reference an service_policy_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M112"/></axsl:template><axsl:template match="text()" priority="-1" mode="M112"/><axsl:template match="@*|node()" priority="-2" mode="M112"><axsl:apply-templates select="@*|*" mode="M112"/></axsl:template>

<!--PATTERN asa_service_policy_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="asa-def:service_policy_object//oval-def:filter" priority="1000" mode="M113"><axsl:variable name="parent_object" select="ancestor::asa-def:service_policy_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#asa') and ($state_name='service_policy_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M113"/></axsl:template><axsl:template match="text()" priority="-1" mode="M113"/><axsl:template match="@*|node()" priority="-2" mode="M113"><axsl:apply-templates select="@*|*" mode="M113"/></axsl:template>

<!--PATTERN asa_hosttst-->


	<!--RULE -->
<axsl:template match="asa-def:snmp_host_test/asa-def:object" priority="1001" mode="M114">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/asa-def:snmp_host_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmp_host_test must reference an snmp_host_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M114"/></axsl:template>

	<!--RULE -->
<axsl:template match="asa-def:snmp_host_test/asa-def:state" priority="1000" mode="M114">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/asa-def:snmp_host_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmp_host_test must reference an snmp_host_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M114"/></axsl:template><axsl:template match="text()" priority="-1" mode="M114"/><axsl:template match="@*|node()" priority="-2" mode="M114"><axsl:apply-templates select="@*|*" mode="M114"/></axsl:template>

<!--PATTERN asa_snmp_host_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="asa-def:snmp_host_object//oval-def:filter" priority="1000" mode="M115"><axsl:variable name="parent_object" select="ancestor::asa-def:snmp_host_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#asa') and ($state_name='snmp_host_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M115"/></axsl:template><axsl:template match="text()" priority="-1" mode="M115"/><axsl:template match="@*|node()" priority="-2" mode="M115"><axsl:apply-templates select="@*|*" mode="M115"/></axsl:template>

<!--PATTERN asa_usertst-->


	<!--RULE -->
<axsl:template match="asa-def:snmp_user_test/asa-def:object" priority="1001" mode="M116">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/asa-def:snmp_user_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmp_user_test must reference an snmp_user_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M116"/></axsl:template>

	<!--RULE -->
<axsl:template match="asa-def:snmp_user_test/asa-def:state" priority="1000" mode="M116">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/asa-def:snmp_user_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmp_user_test must reference an snmp_user_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M116"/></axsl:template><axsl:template match="text()" priority="-1" mode="M116"/><axsl:template match="@*|node()" priority="-2" mode="M116"><axsl:apply-templates select="@*|*" mode="M116"/></axsl:template>

<!--PATTERN asa_snmp_user_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="asa-def:snmp_user_object//oval-def:filter" priority="1000" mode="M117"><axsl:variable name="parent_object" select="ancestor::asa-def:snmp_user_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#asa') and ($state_name='snmp_user_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M117"/></axsl:template><axsl:template match="text()" priority="-1" mode="M117"/><axsl:template match="@*|node()" priority="-2" mode="M117"><axsl:apply-templates select="@*|*" mode="M117"/></axsl:template>

<!--PATTERN asa_grouptst-->


	<!--RULE -->
<axsl:template match="asa-def:snmp_group_test/asa-def:object" priority="1001" mode="M118">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/asa-def:snmp_group_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmp_group_test must reference an snmp_group_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M118"/></axsl:template>

	<!--RULE -->
<axsl:template match="asa-def:snmp_group_test/asa-def:state" priority="1000" mode="M118">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/asa-def:snmp_group_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmp_group_test must reference an snmp_group_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M118"/></axsl:template><axsl:template match="text()" priority="-1" mode="M118"/><axsl:template match="@*|node()" priority="-2" mode="M118"><axsl:apply-templates select="@*|*" mode="M118"/></axsl:template>

<!--PATTERN asa_snmp_group_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="asa-def:snmp_group_object//oval-def:filter" priority="1000" mode="M119"><axsl:variable name="parent_object" select="ancestor::asa-def:snmp_group_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#asa') and ($state_name='snmp_group_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M119"/></axsl:template><axsl:template match="text()" priority="-1" mode="M119"/><axsl:template match="@*|node()" priority="-2" mode="M119"><axsl:apply-templates select="@*|*" mode="M119"/></axsl:template>

<!--PATTERN asatst-->


	<!--RULE -->
<axsl:template match="asa-def:tcp_map_test/asa-def:object" priority="1001" mode="M120">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/asa-def:service_policy_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an service_policy_test must reference an service_policy_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M120"/></axsl:template>

	<!--RULE -->
<axsl:template match="asa-def:tcp_map_test/asa-def:state" priority="1000" mode="M120">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/asa-def:service_policy_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an service_policy_test must reference an service_policy_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M120"/></axsl:template><axsl:template match="text()" priority="-1" mode="M120"/><axsl:template match="@*|node()" priority="-2" mode="M120"><axsl:apply-templates select="@*|*" mode="M120"/></axsl:template>

<!--PATTERN asa_tcp_map_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="asa-def:tcp_map_object//oval-def:filter" priority="1000" mode="M121"><axsl:variable name="parent_object" select="ancestor::asa-def:tcp_map_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#asa') and ($state_name='service_policy_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M121"/></axsl:template><axsl:template match="text()" priority="-1" mode="M121"/><axsl:template match="@*|node()" priority="-2" mode="M121"><axsl:apply-templates select="@*|*" mode="M121"/></axsl:template>

<!--PATTERN asa_vertst-->


	<!--RULE -->
<axsl:template match="asa-def:version_test/asa-def:object" priority="1001" mode="M122">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/asa-def:version_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a version_test must reference a version_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M122"/></axsl:template>

	<!--RULE -->
<axsl:template match="asa-def:version_test/asa-def:state" priority="1000" mode="M122">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/asa-def:version_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a version_test must reference a version_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M122"/></axsl:template><axsl:template match="text()" priority="-1" mode="M122"/><axsl:template match="@*|node()" priority="-2" mode="M122"><axsl:apply-templates select="@*|*" mode="M122"/></axsl:template>

<!--PATTERN catos-def_linetst-->


	<!--RULE -->
<axsl:template match="catos-def:line_test/catos-def:object" priority="1001" mode="M123">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:line_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a line_test must reference a line_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M123"/></axsl:template>

	<!--RULE -->
<axsl:template match="catos-def:line_test/catos-def:state" priority="1000" mode="M123">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:line_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a line_test must reference a line_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M123"/></axsl:template><axsl:template match="text()" priority="-1" mode="M123"/><axsl:template match="@*|node()" priority="-2" mode="M123"><axsl:apply-templates select="@*|*" mode="M123"/></axsl:template>

<!--PATTERN catos-def_line_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="catos-def:line_object//oval-def:filter" priority="1000" mode="M124"><axsl:variable name="parent_object" select="ancestor::catos-def:line_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#catos') and ($state_name='line_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M124"/></axsl:template><axsl:template match="text()" priority="-1" mode="M124"/><axsl:template match="@*|node()" priority="-2" mode="M124"><axsl:apply-templates select="@*|*" mode="M124"/></axsl:template>

<!--PATTERN catos-def_moduletst-->


	<!--RULE -->
<axsl:template match="catos-def:module_test/catos-def:object" priority="1001" mode="M125">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:module_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a module_test must reference a module_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M125"/></axsl:template>

	<!--RULE -->
<axsl:template match="catos-def:module_test/catos-def:state" priority="1000" mode="M125">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:module_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a module_test must reference a module_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M125"/></axsl:template><axsl:template match="text()" priority="-1" mode="M125"/><axsl:template match="@*|node()" priority="-2" mode="M125"><axsl:apply-templates select="@*|*" mode="M125"/></axsl:template>

<!--PATTERN catos-def_module_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="catos-def:module_object//oval-def:filter" priority="1000" mode="M126"><axsl:variable name="parent_object" select="ancestor::catos-def:module_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#catos') and ($state_name='module_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M126"/></axsl:template><axsl:template match="text()" priority="-1" mode="M126"/><axsl:template match="@*|node()" priority="-2" mode="M126"><axsl:apply-templates select="@*|*" mode="M126"/></axsl:template>

<!--PATTERN catos-def_version55_test-->


	<!--RULE -->
<axsl:template match="catos-def:version55_test/catos-def:object" priority="1001" mode="M127">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:version55_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a version55_test must reference a version55_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M127"/></axsl:template>

	<!--RULE -->
<axsl:template match="catos-def:version55_test/catos-def:state" priority="1000" mode="M127">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:version55_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a version55_test must reference a version55_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M127"/></axsl:template><axsl:template match="text()" priority="-1" mode="M127"/><axsl:template match="@*|node()" priority="-2" mode="M127"><axsl:apply-templates select="@*|*" mode="M127"/></axsl:template>

<!--PATTERN catos-def_version_test_dep-->


	<!--RULE -->
<axsl:template match="catos-def:version_test" priority="1000" mode="M128">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M128"/></axsl:template><axsl:template match="text()" priority="-1" mode="M128"/><axsl:template match="@*|node()" priority="-2" mode="M128"><axsl:apply-templates select="@*|*" mode="M128"/></axsl:template>

<!--PATTERN catos-def_version_test-->


	<!--RULE -->
<axsl:template match="catos-def:version_test/catos-def:object" priority="1001" mode="M129">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:version_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a version_test must reference a version_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M129"/></axsl:template>

	<!--RULE -->
<axsl:template match="catos-def:version_test/catos-def:state" priority="1000" mode="M129">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:version_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a version_test must reference a version_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M129"/></axsl:template><axsl:template match="text()" priority="-1" mode="M129"/><axsl:template match="@*|node()" priority="-2" mode="M129"><axsl:apply-templates select="@*|*" mode="M129"/></axsl:template>

<!--PATTERN catos-def_version_object_dep-->


	<!--RULE -->
<axsl:template match="catos-def:version_object" priority="1000" mode="M130">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M130"/></axsl:template><axsl:template match="text()" priority="-1" mode="M130"/><axsl:template match="@*|node()" priority="-2" mode="M130"><axsl:apply-templates select="@*|*" mode="M130"/></axsl:template>

<!--PATTERN catos-def_version_state_dep-->


	<!--RULE -->
<axsl:template match="catos-def:version_state" priority="1000" mode="M131">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M131"/></axsl:template><axsl:template match="text()" priority="-1" mode="M131"/><axsl:template match="@*|node()" priority="-2" mode="M131"><axsl:apply-templates select="@*|*" mode="M131"/></axsl:template>

<!--PATTERN esx-def_patch56tst-->


	<!--RULE -->
<axsl:template match="esx-def:patch56_test/esx-def:object" priority="1001" mode="M132">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/esx-def:patch56_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a patch56_test must reference a patch56_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M132"/></axsl:template>

	<!--RULE -->
<axsl:template match="esx-def:patch56_test/esx-def:state" priority="1000" mode="M132">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/esx-def:patch56_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a patch56_test must reference a patch56_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M132"/></axsl:template><axsl:template match="text()" priority="-1" mode="M132"/><axsl:template match="@*|node()" priority="-2" mode="M132"><axsl:apply-templates select="@*|*" mode="M132"/></axsl:template>

<!--PATTERN esx-def_patch56_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="esx-def:patch56_object//oval-def:filter" priority="1000" mode="M133"><axsl:variable name="parent_object" select="ancestor::esx-def:patch56_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#esx') and ($state_name='patch56_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M133"/></axsl:template><axsl:template match="text()" priority="-1" mode="M133"/><axsl:template match="@*|node()" priority="-2" mode="M133"><axsl:apply-templates select="@*|*" mode="M133"/></axsl:template>

<!--PATTERN esx-def_patchtst_dep-->


	<!--RULE -->
<axsl:template match="esx-def:patch_test" priority="1000" mode="M134">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M134"/></axsl:template><axsl:template match="text()" priority="-1" mode="M134"/><axsl:template match="@*|node()" priority="-2" mode="M134"><axsl:apply-templates select="@*|*" mode="M134"/></axsl:template>

<!--PATTERN esx-def_patchtst-->


	<!--RULE -->
<axsl:template match="esx-def:patch_test/esx-def:object" priority="1001" mode="M135">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/esx-def:patch_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a patch_test must reference a patch_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M135"/></axsl:template>

	<!--RULE -->
<axsl:template match="esx-def:patch_test/esx-def:state" priority="1000" mode="M135">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/esx-def:patch_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a patch_test must reference a patch_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M135"/></axsl:template><axsl:template match="text()" priority="-1" mode="M135"/><axsl:template match="@*|node()" priority="-2" mode="M135"><axsl:apply-templates select="@*|*" mode="M135"/></axsl:template>

<!--PATTERN esx-def_patchobj_dep-->


	<!--RULE -->
<axsl:template match="esx-def:patch_object" priority="1000" mode="M136">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M136"/></axsl:template><axsl:template match="text()" priority="-1" mode="M136"/><axsl:template match="@*|node()" priority="-2" mode="M136"><axsl:apply-templates select="@*|*" mode="M136"/></axsl:template>

<!--PATTERN esx-def_patchste_dep-->


	<!--RULE -->
<axsl:template match="esx-def:patch_state" priority="1000" mode="M137">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M137"/></axsl:template><axsl:template match="text()" priority="-1" mode="M137"/><axsl:template match="@*|node()" priority="-2" mode="M137"><axsl:apply-templates select="@*|*" mode="M137"/></axsl:template>

<!--PATTERN esx-def_versiontst-->


	<!--RULE -->
<axsl:template match="esx-def:version_test/esx-def:object" priority="1001" mode="M138">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/esx-def:version_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a version_test must reference a version_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M138"/></axsl:template>

	<!--RULE -->
<axsl:template match="esx-def:version_test/esx-def:state" priority="1000" mode="M138">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/esx-def:version_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a version_test must reference a version_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M138"/></axsl:template><axsl:template match="text()" priority="-1" mode="M138"/><axsl:template match="@*|node()" priority="-2" mode="M138"><axsl:apply-templates select="@*|*" mode="M138"/></axsl:template>

<!--PATTERN esx-def_visdkmanagedobjecttst-->


	<!--RULE -->
<axsl:template match="esx-def:visdkmanagedobject_test/esx-def:object" priority="1001" mode="M139">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/esx-def:visdkmanagedobject_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a visdkmanagedobject_test must reference a visdkmanagedobject_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M139"/></axsl:template>

	<!--RULE -->
<axsl:template match="esx-def:visdkmanagedobject_test/esx-def:state" priority="1000" mode="M139">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/esx-def:visdkmanagedobject_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a visdkmanagedobject_test must reference a visdkmanagedobject_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M139"/></axsl:template><axsl:template match="text()" priority="-1" mode="M139"/><axsl:template match="@*|node()" priority="-2" mode="M139"><axsl:apply-templates select="@*|*" mode="M139"/></axsl:template>

<!--PATTERN esx-def_visdkmanagedobject_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="esx-def:visdkmanagedobject_object//oval-def:filter" priority="1000" mode="M140"><axsl:variable name="parent_object" select="ancestor::esx-def:visdkmanagedobject_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#esx') and ($state_name='visdkmanagedobject_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M140"/></axsl:template><axsl:template match="text()" priority="-1" mode="M140"/><axsl:template match="@*|node()" priority="-2" mode="M140"><axsl:apply-templates select="@*|*" mode="M140"/></axsl:template>

<!--PATTERN freebsd-def_portinfotst-->


	<!--RULE -->
<axsl:template match="freebsd-def:portinfo_test/freebsd-def:object" priority="1001" mode="M141">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/freebsd-def:portinfo_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a portinfo_test must reference an portinfo_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M141"/></axsl:template>

	<!--RULE -->
<axsl:template match="freebsd-def:portinfo_test/freebsd-def:state" priority="1000" mode="M141">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/freebsd-def:portinfo_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a portinfo_test must reference an portinfo_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M141"/></axsl:template><axsl:template match="text()" priority="-1" mode="M141"/><axsl:template match="@*|node()" priority="-2" mode="M141"><axsl:apply-templates select="@*|*" mode="M141"/></axsl:template>

<!--PATTERN freebsd-def_portinfo_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="freebsd-def:portinfo_object//oval-def:filter" priority="1000" mode="M142"><axsl:variable name="parent_object" select="ancestor::freebsd-def:portinfo_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd') and ($state_name='portinfo_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M142"/></axsl:template><axsl:template match="text()" priority="-1" mode="M142"/><axsl:template match="@*|node()" priority="-2" mode="M142"><axsl:apply-templates select="@*|*" mode="M142"/></axsl:template>

<!--PATTERN hpux-def_getconf_test-->


	<!--RULE -->
<axsl:template match="hpux-def:getconf_test/hpux-def:object" priority="1001" mode="M143">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:getconf_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an getconf_test must reference an getconf_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M143"/></axsl:template>

	<!--RULE -->
<axsl:template match="hpux-def:getconf_test/hpux-def:state" priority="1000" mode="M143">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:getconf_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an getconf_test must reference an getconf_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M143"/></axsl:template><axsl:template match="text()" priority="-1" mode="M143"/><axsl:template match="@*|node()" priority="-2" mode="M143"><axsl:apply-templates select="@*|*" mode="M143"/></axsl:template>

<!--PATTERN hpux-def_getconf_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="hpux-def:getconf_object//oval-def:filter" priority="1000" mode="M144"><axsl:variable name="parent_object" select="ancestor::hpux-def:getconf_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux') and ($state_name='getconf_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M144"/></axsl:template><axsl:template match="text()" priority="-1" mode="M144"/><axsl:template match="@*|node()" priority="-2" mode="M144"><axsl:apply-templates select="@*|*" mode="M144"/></axsl:template>

<!--PATTERN hpux-def_ndd_test-->


	<!--RULE -->
<axsl:template match="hpux-def:ndd_test/hpux-def:object" priority="1001" mode="M145">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:ndd_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an ndd_test must reference an ndd_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M145"/></axsl:template>

	<!--RULE -->
<axsl:template match="hpux-def:ndd_test/hpux-def:state" priority="1000" mode="M145">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:ndd_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an ndd_test must reference an ndd_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M145"/></axsl:template><axsl:template match="text()" priority="-1" mode="M145"/><axsl:template match="@*|node()" priority="-2" mode="M145"><axsl:apply-templates select="@*|*" mode="M145"/></axsl:template>

<!--PATTERN hpux-def_ndd_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="hpux-def:ndd_object//oval-def:filter" priority="1000" mode="M146"><axsl:variable name="parent_object" select="ancestor::hpux-def:ndd_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux') and ($state_name='ndd_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M146"/></axsl:template><axsl:template match="text()" priority="-1" mode="M146"/><axsl:template match="@*|node()" priority="-2" mode="M146"><axsl:apply-templates select="@*|*" mode="M146"/></axsl:template>

<!--PATTERN hpux-def_patch53_test-->


	<!--RULE -->
<axsl:template match="hpux-def:patch53_test/hpux-def:object" priority="1001" mode="M147">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:patch53_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an patch53_test must reference an patch53_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M147"/></axsl:template>

	<!--RULE -->
<axsl:template match="hpux-def:patch53_test/hpux-def:state" priority="1000" mode="M147">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:patch53_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an patch53_test must reference an patch53_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M147"/></axsl:template><axsl:template match="text()" priority="-1" mode="M147"/><axsl:template match="@*|node()" priority="-2" mode="M147"><axsl:apply-templates select="@*|*" mode="M147"/></axsl:template>

<!--PATTERN hpux-def_patch53_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="hpux-def:patch53_object//oval-def:filter" priority="1000" mode="M148"><axsl:variable name="parent_object" select="ancestor::hpux-def:patch53_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux') and ($state_name='patch53_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M148"/></axsl:template><axsl:template match="text()" priority="-1" mode="M148"/><axsl:template match="@*|node()" priority="-2" mode="M148"><axsl:apply-templates select="@*|*" mode="M148"/></axsl:template>

<!--PATTERN hpux-def_patch_test_dep-->


	<!--RULE -->
<axsl:template match="hpux-def:patch_test" priority="1000" mode="M149">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M149"/></axsl:template><axsl:template match="text()" priority="-1" mode="M149"/><axsl:template match="@*|node()" priority="-2" mode="M149"><axsl:apply-templates select="@*|*" mode="M149"/></axsl:template>

<!--PATTERN hpux-def_patch_test-->


	<!--RULE -->
<axsl:template match="hpux-def:patch_test/hpux-def:object" priority="1001" mode="M150">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:patch_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an patch_test must reference an patch_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M150"/></axsl:template>

	<!--RULE -->
<axsl:template match="hpux-def:patch_test/hpux-def:state" priority="1000" mode="M150">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:patch_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an patch_test must reference an patch_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M150"/></axsl:template><axsl:template match="text()" priority="-1" mode="M150"/><axsl:template match="@*|node()" priority="-2" mode="M150"><axsl:apply-templates select="@*|*" mode="M150"/></axsl:template>

<!--PATTERN hpux-def_patch_object_dep-->


	<!--RULE -->
<axsl:template match="hpux-def:patch_object" priority="1000" mode="M151">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M151"/></axsl:template><axsl:template match="text()" priority="-1" mode="M151"/><axsl:template match="@*|node()" priority="-2" mode="M151"><axsl:apply-templates select="@*|*" mode="M151"/></axsl:template>

<!--PATTERN hpux-def_patch_state_dep-->


	<!--RULE -->
<axsl:template match="hpux-def:patch_state" priority="1000" mode="M152">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M152"/></axsl:template><axsl:template match="text()" priority="-1" mode="M152"/><axsl:template match="@*|node()" priority="-2" mode="M152"><axsl:apply-templates select="@*|*" mode="M152"/></axsl:template>

<!--PATTERN hpux-def_swlist_test-->


	<!--RULE -->
<axsl:template match="hpux-def:swlist_test/hpux-def:object" priority="1001" mode="M153">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:swlist_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an swlist_test must reference an swlist_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M153"/></axsl:template>

	<!--RULE -->
<axsl:template match="hpux-def:swlist_test/hpux-def:state" priority="1000" mode="M153">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:swlist_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an swlist_test must reference an swlist_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M153"/></axsl:template><axsl:template match="text()" priority="-1" mode="M153"/><axsl:template match="@*|node()" priority="-2" mode="M153"><axsl:apply-templates select="@*|*" mode="M153"/></axsl:template>

<!--PATTERN hpux-def_swlist_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="hpux-def:swlist_object//oval-def:filter" priority="1000" mode="M154"><axsl:variable name="parent_object" select="ancestor::hpux-def:swlist_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux') and ($state_name='swlist_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M154"/></axsl:template><axsl:template match="text()" priority="-1" mode="M154"/><axsl:template match="@*|node()" priority="-2" mode="M154"><axsl:apply-templates select="@*|*" mode="M154"/></axsl:template>

<!--PATTERN hpux-def_trusted_test-->


	<!--RULE -->
<axsl:template match="hpux-def:trusted_test/hpux-def:object" priority="1001" mode="M155">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:trusted_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an trusted_test must reference an trusted_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M155"/></axsl:template>

	<!--RULE -->
<axsl:template match="hpux-def:trusted_test/hpux-def:state" priority="1000" mode="M155">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:trusted_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an trusted_test must reference an trusted_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M155"/></axsl:template><axsl:template match="text()" priority="-1" mode="M155"/><axsl:template match="@*|node()" priority="-2" mode="M155"><axsl:apply-templates select="@*|*" mode="M155"/></axsl:template>

<!--PATTERN hpux-def_trusted_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="hpux-def:trusted_object//oval-def:filter" priority="1000" mode="M156"><axsl:variable name="parent_object" select="ancestor::hpux-def:trusted_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux') and ($state_name='trusted_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M156"/></axsl:template><axsl:template match="text()" priority="-1" mode="M156"/><axsl:template match="@*|node()" priority="-2" mode="M156"><axsl:apply-templates select="@*|*" mode="M156"/></axsl:template>

<!--PATTERN ind-def_famtst-->


	<!--RULE -->
<axsl:template match="ind-def:family_test/ind-def:object" priority="1001" mode="M157">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:family_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a family_test must reference a family_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M157"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:family_test/ind-def:state" priority="1000" mode="M157">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:family_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a family_test must reference a family_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M157"/></axsl:template><axsl:template match="text()" priority="-1" mode="M157"/><axsl:template match="@*|node()" priority="-2" mode="M157"><axsl:apply-templates select="@*|*" mode="M157"/></axsl:template>

<!--PATTERN ind-def_filehash_test_dep-->


	<!--RULE -->
<axsl:template match="ind-def:filehash_test" priority="1000" mode="M158">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M158"/></axsl:template><axsl:template match="text()" priority="-1" mode="M158"/><axsl:template match="@*|node()" priority="-2" mode="M158"><axsl:apply-templates select="@*|*" mode="M158"/></axsl:template>

<!--PATTERN ind-def_hashtst-->


	<!--RULE -->
<axsl:template match="ind-def:filehash_test/ind-def:object" priority="1001" mode="M159">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:filehash_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a filehash_test must reference a filesha1_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M159"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:filehash_test/ind-def:state" priority="1000" mode="M159">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:filehash_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a filehash_test must reference a filesha1_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M159"/></axsl:template><axsl:template match="text()" priority="-1" mode="M159"/><axsl:template match="@*|node()" priority="-2" mode="M159"><axsl:apply-templates select="@*|*" mode="M159"/></axsl:template>

<!--PATTERN ind-def_filehash_object_dep-->


	<!--RULE -->
<axsl:template match="ind-def:filehash_object" priority="1000" mode="M160">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M160"/></axsl:template><axsl:template match="text()" priority="-1" mode="M160"/><axsl:template match="@*|node()" priority="-2" mode="M160"><axsl:apply-templates select="@*|*" mode="M160"/></axsl:template>

<!--PATTERN ind-def_hashobjfilepath-->


	<!--RULE -->
<axsl:template match="ind-def:filehash_object/ind-def:filepath" priority="1000" mode="M161">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@max_depth or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M161"/></axsl:template><axsl:template match="text()" priority="-1" mode="M161"/><axsl:template match="@*|node()" priority="-2" mode="M161"><axsl:apply-templates select="@*|*" mode="M161"/></axsl:template>

<!--PATTERN ind-def_hashobjfilepath2-->


	<!--RULE -->
<axsl:template match="ind-def:filehash_object/ind-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M162">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M162"/></axsl:template><axsl:template match="text()" priority="-1" mode="M162"/><axsl:template match="@*|node()" priority="-2" mode="M162"><axsl:apply-templates select="@*|*" mode="M162"/></axsl:template>

<!--PATTERN ind-def_hashobjpath-->


	<!--RULE -->
<axsl:template match="ind-def:filehash_object/ind-def:path[not(@operation='equals' or not(@operation))]" priority="1000" mode="M163">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M163"/></axsl:template><axsl:template match="text()" priority="-1" mode="M163"/><axsl:template match="@*|node()" priority="-2" mode="M163"><axsl:apply-templates select="@*|*" mode="M163"/></axsl:template>

<!--PATTERN ind-def_hashobjfilename-->


	<!--RULE -->
<axsl:template match="ind-def:filehash_object/ind-def:filename" priority="1000" mode="M164">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or not(.='') or (.='' and @operation = 'pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M164"/></axsl:template><axsl:template match="text()" priority="-1" mode="M164"/><axsl:template match="@*|node()" priority="-2" mode="M164"><axsl:apply-templates select="@*|*" mode="M164"/></axsl:template>

<!--PATTERN ind-def_filehash_state_dep-->


	<!--RULE -->
<axsl:template match="ind-def:filehash_state" priority="1000" mode="M165">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M165"/></axsl:template><axsl:template match="text()" priority="-1" mode="M165"/><axsl:template match="@*|node()" priority="-2" mode="M165"><axsl:apply-templates select="@*|*" mode="M165"/></axsl:template>

<!--PATTERN ind-def_filehash58_test-->


	<!--RULE -->
<axsl:template match="ind-def:filehash58_test/ind-def:object" priority="1001" mode="M166">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:filehash58_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a filehash58_test must reference a filehash58_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M166"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:filehash58_test/ind-def:state" priority="1000" mode="M166">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:filehash58_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a filehash58_test must reference a filehash58_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M166"/></axsl:template><axsl:template match="text()" priority="-1" mode="M166"/><axsl:template match="@*|node()" priority="-2" mode="M166"><axsl:apply-templates select="@*|*" mode="M166"/></axsl:template>

<!--PATTERN ind-def_filehash58_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ind-def:filehash58_object//oval-def:filter" priority="1000" mode="M167"><axsl:variable name="parent_object" select="ancestor::ind-def:filehash58_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='filehash58_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M167"/></axsl:template><axsl:template match="text()" priority="-1" mode="M167"/><axsl:template match="@*|node()" priority="-2" mode="M167"><axsl:apply-templates select="@*|*" mode="M167"/></axsl:template>

<!--PATTERN ind-def_hash58objfilepath-->


	<!--RULE -->
<axsl:template match="ind-def:filehash58_object/ind-def:filepath" priority="1000" mode="M168">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@max_depth or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M168"/></axsl:template><axsl:template match="text()" priority="-1" mode="M168"/><axsl:template match="@*|node()" priority="-2" mode="M168"><axsl:apply-templates select="@*|*" mode="M168"/></axsl:template>

<!--PATTERN ind-def_hash58objfilepath2-->


	<!--RULE -->
<axsl:template match="ind-def:filehash58_object/ind-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M169">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M169"/></axsl:template><axsl:template match="text()" priority="-1" mode="M169"/><axsl:template match="@*|node()" priority="-2" mode="M169"><axsl:apply-templates select="@*|*" mode="M169"/></axsl:template>

<!--PATTERN ind-def_hash58objpath-->


	<!--RULE -->
<axsl:template match="ind-def:filehash58_object/ind-def:path[not(@operation='equals' or not(@operation))]" priority="1000" mode="M170">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M170"/></axsl:template><axsl:template match="text()" priority="-1" mode="M170"/><axsl:template match="@*|node()" priority="-2" mode="M170"><axsl:apply-templates select="@*|*" mode="M170"/></axsl:template>

<!--PATTERN ind-def_hash58objfilename-->


	<!--RULE -->
<axsl:template match="ind-def:filehash58_object/ind-def:filename" priority="1000" mode="M171">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or not(.='') or (.='' and @operation = 'pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M171"/></axsl:template><axsl:template match="text()" priority="-1" mode="M171"/><axsl:template match="@*|node()" priority="-2" mode="M171"><axsl:apply-templates select="@*|*" mode="M171"/></axsl:template>

<!--PATTERN ind-def_environmentvariable_test_dep-->


	<!--RULE -->
<axsl:template match="ind-def:environmentvariable_test" priority="1000" mode="M172">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M172"/></axsl:template><axsl:template match="text()" priority="-1" mode="M172"/><axsl:template match="@*|node()" priority="-2" mode="M172"><axsl:apply-templates select="@*|*" mode="M172"/></axsl:template>

<!--PATTERN ind-def_envtst-->


	<!--RULE -->
<axsl:template match="ind-def:environmentvariable_test/ind-def:object" priority="1001" mode="M173">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:environmentvariable_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an environmentvariable_test must reference a environmentvariable_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M173"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:environmentvariable_test/ind-def:state" priority="1000" mode="M173">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:environmentvariable_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an environmentvariable_test must reference a environmentvariable_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M173"/></axsl:template><axsl:template match="text()" priority="-1" mode="M173"/><axsl:template match="@*|node()" priority="-2" mode="M173"><axsl:apply-templates select="@*|*" mode="M173"/></axsl:template>

<!--PATTERN ind-def_environmentvariable_object_dep-->


	<!--RULE -->
<axsl:template match="ind-def:environmentvariable_object" priority="1000" mode="M174">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M174"/></axsl:template><axsl:template match="text()" priority="-1" mode="M174"/><axsl:template match="@*|node()" priority="-2" mode="M174"><axsl:apply-templates select="@*|*" mode="M174"/></axsl:template>

<!--PATTERN ind-def_environmentvariable_state_dep-->


	<!--RULE -->
<axsl:template match="ind-def:environmentvariable_state" priority="1000" mode="M175">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M175"/></axsl:template><axsl:template match="text()" priority="-1" mode="M175"/><axsl:template match="@*|node()" priority="-2" mode="M175"><axsl:apply-templates select="@*|*" mode="M175"/></axsl:template>

<!--PATTERN ind-def_env58tst-->


	<!--RULE -->
<axsl:template match="ind-def:environmentvariable58_test/ind-def:object" priority="1001" mode="M176">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:environmentvariable58_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an environmentvariable58_test must reference a environmentvariable58_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M176"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:environmentvariable58_test/ind-def:state" priority="1000" mode="M176">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:environmentvariable58_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an environmentvariable58_test must reference a environmentvariable58_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M176"/></axsl:template><axsl:template match="text()" priority="-1" mode="M176"/><axsl:template match="@*|node()" priority="-2" mode="M176"><axsl:apply-templates select="@*|*" mode="M176"/></axsl:template>

<!--PATTERN ind-def_environmentvariable58_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ind-def:environmentvariable58_object//oval-def:filter" priority="1000" mode="M177"><axsl:variable name="parent_object" select="ancestor::ind-def:environmentvariable58_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='environmentvariable58_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M177"/></axsl:template><axsl:template match="text()" priority="-1" mode="M177"/><axsl:template match="@*|node()" priority="-2" mode="M177"><axsl:apply-templates select="@*|*" mode="M177"/></axsl:template>

<!--PATTERN ind-def_ldaptst-->


	<!--RULE -->
<axsl:template match="ind-def:ldap_test/ind-def:object" priority="1001" mode="M178">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:ldap_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an ldap_test must reference an ldap_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M178"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:ldap_test/ind-def:state" priority="1000" mode="M178">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:ldap_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an ldap_test must reference an ldap_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M178"/></axsl:template><axsl:template match="text()" priority="-1" mode="M178"/><axsl:template match="@*|node()" priority="-2" mode="M178"><axsl:apply-templates select="@*|*" mode="M178"/></axsl:template>

<!--PATTERN ind-def_ldap57_test_dep-->


	<!--RULE -->
<axsl:template match="ind-def:ldap57_test" priority="1000" mode="M179">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M179"/></axsl:template><axsl:template match="text()" priority="-1" mode="M179"/><axsl:template match="@*|node()" priority="-2" mode="M179"><axsl:apply-templates select="@*|*" mode="M179"/></axsl:template>

<!--PATTERN ind-def_ldap57_test-->


	<!--RULE -->
<axsl:template match="ind-def:ldap57_test/ind-def:object" priority="1001" mode="M180">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:ldap57_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an ldap57_test must reference an ldap57_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M180"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:ldap57_test/ind-def:state" priority="1000" mode="M180">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:ldap57_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an ldap57_test must reference an ldap57_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M180"/></axsl:template><axsl:template match="text()" priority="-1" mode="M180"/><axsl:template match="@*|node()" priority="-2" mode="M180"><axsl:apply-templates select="@*|*" mode="M180"/></axsl:template>

<!--PATTERN ind-def_ldap57_object_dep-->


	<!--RULE -->
<axsl:template match="ind-def:ldap57_object" priority="1000" mode="M181">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M181"/></axsl:template><axsl:template match="text()" priority="-1" mode="M181"/><axsl:template match="@*|node()" priority="-2" mode="M181"><axsl:apply-templates select="@*|*" mode="M181"/></axsl:template>

<!--PATTERN ind-def_ldap57_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ind-def:ldap57_object//oval-def:filter" priority="1000" mode="M182"><axsl:variable name="parent_object" select="ancestor::ind-def:ldap57_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='ldap57_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M182"/></axsl:template><axsl:template match="text()" priority="-1" mode="M182"/><axsl:template match="@*|node()" priority="-2" mode="M182"><axsl:apply-templates select="@*|*" mode="M182"/></axsl:template>

<!--PATTERN ind-def_ldap57_state_dep-->


	<!--RULE -->
<axsl:template match="ind-def:ldap57_state" priority="1000" mode="M183">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M183"/></axsl:template><axsl:template match="text()" priority="-1" mode="M183"/><axsl:template match="@*|node()" priority="-2" mode="M183"><axsl:apply-templates select="@*|*" mode="M183"/></axsl:template>

<!--PATTERN ind-def_ldap57stevalue-->


	<!--RULE -->
<axsl:template match="ind-def:ldap57_state/ind-def:value" priority="1000" mode="M184">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the value entity of a ldap57_state must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M184"/></axsl:template><axsl:template match="text()" priority="-1" mode="M184"/><axsl:template match="@*|node()" priority="-2" mode="M184"><axsl:apply-templates select="@*|*" mode="M184"/></axsl:template>

<!--PATTERN ind-def_sql_test_dep-->


	<!--RULE -->
<axsl:template match="ind-def:sql_test" priority="1000" mode="M185">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M185"/></axsl:template><axsl:template match="text()" priority="-1" mode="M185"/><axsl:template match="@*|node()" priority="-2" mode="M185"><axsl:apply-templates select="@*|*" mode="M185"/></axsl:template>

<!--PATTERN ind-def_sqltst-->


	<!--RULE -->
<axsl:template match="ind-def:sql_test/ind-def:object" priority="1001" mode="M186">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:sql_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a sql_test must reference a sql_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M186"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:sql_test/ind-def:state" priority="1000" mode="M186">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:sql_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a sql_test must reference a sql_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M186"/></axsl:template><axsl:template match="text()" priority="-1" mode="M186"/><axsl:template match="@*|node()" priority="-2" mode="M186"><axsl:apply-templates select="@*|*" mode="M186"/></axsl:template>

<!--PATTERN ind-def_sql_object_dep-->


	<!--RULE -->
<axsl:template match="ind-def:sql_object" priority="1000" mode="M187">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M187"/></axsl:template><axsl:template match="text()" priority="-1" mode="M187"/><axsl:template match="@*|node()" priority="-2" mode="M187"><axsl:apply-templates select="@*|*" mode="M187"/></axsl:template>

<!--PATTERN ind-def_sqlobjdengine-->


	<!--RULE -->
<axsl:template match="ind-def:sql_object/ind-def:engine" priority="1000" mode="M188">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the engine entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M188"/></axsl:template><axsl:template match="text()" priority="-1" mode="M188"/><axsl:template match="@*|node()" priority="-2" mode="M188"><axsl:apply-templates select="@*|*" mode="M188"/></axsl:template>

<!--PATTERN ind-def_sqlobjversion-->


	<!--RULE -->
<axsl:template match="ind-def:sql_object/ind-def:version" priority="1000" mode="M189">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the version entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M189"/></axsl:template><axsl:template match="text()" priority="-1" mode="M189"/><axsl:template match="@*|node()" priority="-2" mode="M189"><axsl:apply-templates select="@*|*" mode="M189"/></axsl:template>

<!--PATTERN ind-def_sqlobjconnection_string-->


	<!--RULE -->
<axsl:template match="ind-def:sql_object/ind-def:connection_string" priority="1000" mode="M190">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the connection_string entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M190"/></axsl:template><axsl:template match="text()" priority="-1" mode="M190"/><axsl:template match="@*|node()" priority="-2" mode="M190"><axsl:apply-templates select="@*|*" mode="M190"/></axsl:template>

<!--PATTERN ind-def_sqlobjsql-->


	<!--RULE -->
<axsl:template match="ind-def:sql_object/ind-def:sql" priority="1000" mode="M191">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the sql entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M191"/></axsl:template><axsl:template match="text()" priority="-1" mode="M191"/><axsl:template match="@*|node()" priority="-2" mode="M191"><axsl:apply-templates select="@*|*" mode="M191"/></axsl:template>

<!--PATTERN ind-def_sql_state_dep-->


	<!--RULE -->
<axsl:template match="ind-def:sql_state" priority="1000" mode="M192">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M192"/></axsl:template><axsl:template match="text()" priority="-1" mode="M192"/><axsl:template match="@*|node()" priority="-2" mode="M192"><axsl:apply-templates select="@*|*" mode="M192"/></axsl:template>

<!--PATTERN ind-def_sql57_test-->


	<!--RULE -->
<axsl:template match="ind-def:sql57_test/ind-def:object" priority="1001" mode="M193">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:sql57_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a sql57_test must reference a sql57_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M193"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:sql57_test/ind-def:state" priority="1000" mode="M193">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:sql57_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a sql57_test must reference a sql57_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M193"/></axsl:template><axsl:template match="text()" priority="-1" mode="M193"/><axsl:template match="@*|node()" priority="-2" mode="M193"><axsl:apply-templates select="@*|*" mode="M193"/></axsl:template>

<!--PATTERN ind-def_sql57_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ind-def:sql57_object//oval-def:filter" priority="1000" mode="M194"><axsl:variable name="parent_object" select="ancestor::ind-def:sql57_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='sql57_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M194"/></axsl:template><axsl:template match="text()" priority="-1" mode="M194"/><axsl:template match="@*|node()" priority="-2" mode="M194"><axsl:apply-templates select="@*|*" mode="M194"/></axsl:template>

<!--PATTERN ind-def_sql57_object_dengine-->


	<!--RULE -->
<axsl:template match="ind-def:sql57_object/ind-def:engine" priority="1000" mode="M195">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the engine entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M195"/></axsl:template><axsl:template match="text()" priority="-1" mode="M195"/><axsl:template match="@*|node()" priority="-2" mode="M195"><axsl:apply-templates select="@*|*" mode="M195"/></axsl:template>

<!--PATTERN ind-def_sql57_object_version-->


	<!--RULE -->
<axsl:template match="ind-def:sql57_object/ind-def:version" priority="1000" mode="M196">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the version entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M196"/></axsl:template><axsl:template match="text()" priority="-1" mode="M196"/><axsl:template match="@*|node()" priority="-2" mode="M196"><axsl:apply-templates select="@*|*" mode="M196"/></axsl:template>

<!--PATTERN ind-def_sql57_object_connection_string-->


	<!--RULE -->
<axsl:template match="ind-def:sql57_object/ind-def:connection_string" priority="1000" mode="M197">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the connection_string entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M197"/></axsl:template><axsl:template match="text()" priority="-1" mode="M197"/><axsl:template match="@*|node()" priority="-2" mode="M197"><axsl:apply-templates select="@*|*" mode="M197"/></axsl:template>

<!--PATTERN ind-def_sql57_object_sql-->


	<!--RULE -->
<axsl:template match="ind-def:sql57_object/ind-def:sql" priority="1000" mode="M198">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the sql entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M198"/></axsl:template><axsl:template match="text()" priority="-1" mode="M198"/><axsl:template match="@*|node()" priority="-2" mode="M198"><axsl:apply-templates select="@*|*" mode="M198"/></axsl:template>

<!--PATTERN ind-def_sql57steresult-->


	<!--RULE -->
<axsl:template match="ind-def:sql57_state/ind-def:result" priority="1000" mode="M199">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the result entity of a sql57_state must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M199"/></axsl:template><axsl:template match="text()" priority="-1" mode="M199"/><axsl:template match="@*|node()" priority="-2" mode="M199"><axsl:apply-templates select="@*|*" mode="M199"/></axsl:template>

<!--PATTERN ind-def_txt54tst-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent54_test/ind-def:object" priority="1001" mode="M200">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:textfilecontent54_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a textfilecontent54_test must reference a textfilecontent54_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M200"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:textfilecontent54_test/ind-def:state" priority="1000" mode="M200">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:textfilecontent54_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a textfilecontent54_test must reference a textfilecontent54_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M200"/></axsl:template><axsl:template match="text()" priority="-1" mode="M200"/><axsl:template match="@*|node()" priority="-2" mode="M200"><axsl:apply-templates select="@*|*" mode="M200"/></axsl:template>

<!--PATTERN ind-def_textfilecontent54_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent54_object//oval-def:filter" priority="1000" mode="M201"><axsl:variable name="parent_object" select="ancestor::ind-def:textfilecontent54_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='textfilecontent54_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M201"/></axsl:template><axsl:template match="text()" priority="-1" mode="M201"/><axsl:template match="@*|node()" priority="-2" mode="M201"><axsl:apply-templates select="@*|*" mode="M201"/></axsl:template>

<!--PATTERN ind-def_txt54objfilepath-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent54_object/ind-def:filepath" priority="1000" mode="M202">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@max_depth or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M202"/></axsl:template><axsl:template match="text()" priority="-1" mode="M202"/><axsl:template match="@*|node()" priority="-2" mode="M202"><axsl:apply-templates select="@*|*" mode="M202"/></axsl:template>

<!--PATTERN ind-def_txt54objfilepath2-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent54_object/ind-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M203">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M203"/></axsl:template><axsl:template match="text()" priority="-1" mode="M203"/><axsl:template match="@*|node()" priority="-2" mode="M203"><axsl:apply-templates select="@*|*" mode="M203"/></axsl:template>

<!--PATTERN ind-def_txt54objpath-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent54_object/ind-def:path[not(@operation='equals' or not(@operation))]" priority="1000" mode="M204">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M204"/></axsl:template><axsl:template match="text()" priority="-1" mode="M204"/><axsl:template match="@*|node()" priority="-2" mode="M204"><axsl:apply-templates select="@*|*" mode="M204"/></axsl:template>

<!--PATTERN ind-def_txt54objfilename-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent54_object/ind-def:filename" priority="1000" mode="M205">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or not(.='') or (.='' and @operation = 'pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M205"/></axsl:template><axsl:template match="text()" priority="-1" mode="M205"/><axsl:template match="@*|node()" priority="-2" mode="M205"><axsl:apply-templates select="@*|*" mode="M205"/></axsl:template>

<!--PATTERN ind-def_txt54objpattern-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent54_object/ind-def:pattern" priority="1000" mode="M206">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@operation='pattern match'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the pattern entity of a textfilecontent54_object should be 'pattern match'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M206"/></axsl:template><axsl:template match="text()" priority="-1" mode="M206"/><axsl:template match="@*|node()" priority="-2" mode="M206"><axsl:apply-templates select="@*|*" mode="M206"/></axsl:template>

<!--PATTERN win-def_tfc54_i-->


	<!--RULE -->
<axsl:template match="win-def:textfilecontent54_state/win-def:instance" priority="1000" mode="M207">

		<!--ASSERT -->
<axsl:choose><axsl:when test="string-length(.) = 0 or number(.) &lt; 1"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of instance must be greater than one<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M207"/></axsl:template><axsl:template match="text()" priority="-1" mode="M207"/><axsl:template match="@*|node()" priority="-2" mode="M207"><axsl:apply-templates select="@*|*" mode="M207"/></axsl:template>

<!--PATTERN ind-def_txttst_dep-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent_test" priority="1000" mode="M208">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M208"/></axsl:template><axsl:template match="text()" priority="-1" mode="M208"/><axsl:template match="@*|node()" priority="-2" mode="M208"><axsl:apply-templates select="@*|*" mode="M208"/></axsl:template>

<!--PATTERN ind-def_txttst-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent_test/ind-def:object" priority="1001" mode="M209">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:textfilecontent_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a textfilecontent_test must reference a textfilecontent_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M209"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:textfilecontent_test/ind-def:state" priority="1000" mode="M209">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:textfilecontent_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a textfilecontent_test must reference a textfilecontent_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M209"/></axsl:template><axsl:template match="text()" priority="-1" mode="M209"/><axsl:template match="@*|node()" priority="-2" mode="M209"><axsl:apply-templates select="@*|*" mode="M209"/></axsl:template>

<!--PATTERN ind-def_txtobj_dep-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent_object" priority="1000" mode="M210">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M210"/></axsl:template><axsl:template match="text()" priority="-1" mode="M210"/><axsl:template match="@*|node()" priority="-2" mode="M210"><axsl:apply-templates select="@*|*" mode="M210"/></axsl:template>

<!--PATTERN ind-def_txtobjfilename-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent_object/ind-def:filename" priority="1000" mode="M211">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or not(.='') or (.='' and @operation = 'pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M211"/></axsl:template><axsl:template match="text()" priority="-1" mode="M211"/><axsl:template match="@*|node()" priority="-2" mode="M211"><axsl:apply-templates select="@*|*" mode="M211"/></axsl:template>

<!--PATTERN ind-def_txtobjline-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent_object/ind-def:line" priority="1000" mode="M212">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@operation='pattern match'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the line entity of a textfilecontent_object should be 'pattern match'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M212"/></axsl:template><axsl:template match="text()" priority="-1" mode="M212"/><axsl:template match="@*|node()" priority="-2" mode="M212"><axsl:apply-templates select="@*|*" mode="M212"/></axsl:template>

<!--PATTERN ind-def_txtste_dep-->


	<!--RULE -->
<axsl:template match="ind-def:textfilecontent_state" priority="1000" mode="M213">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M213"/></axsl:template><axsl:template match="text()" priority="-1" mode="M213"/><axsl:template match="@*|node()" priority="-2" mode="M213"><axsl:apply-templates select="@*|*" mode="M213"/></axsl:template>

<!--PATTERN ind-def_vattst-->


	<!--RULE -->
<axsl:template match="ind-def:variable_test/ind-def:object" priority="1001" mode="M214">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:variable_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a variable_test must reference a variable_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M214"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:variable_test/ind-def:state" priority="1000" mode="M214">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:variable_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a variable_test must reference a variable_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M214"/></axsl:template><axsl:template match="text()" priority="-1" mode="M214"/><axsl:template match="@*|node()" priority="-2" mode="M214"><axsl:apply-templates select="@*|*" mode="M214"/></axsl:template>

<!--PATTERN ind-def_variable_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ind-def:variable_object//oval-def:filter" priority="1000" mode="M215"><axsl:variable name="parent_object" select="ancestor::ind-def:variable_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='variable_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M215"/></axsl:template><axsl:template match="text()" priority="-1" mode="M215"/><axsl:template match="@*|node()" priority="-2" mode="M215"><axsl:apply-templates select="@*|*" mode="M215"/></axsl:template>

<!--PATTERN ind-def_varobjvar_ref-->


	<!--RULE -->
<axsl:template match="ind-def:variable_object/ind-def:var_ref" priority="1000" mode="M216">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@var_ref)"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - var_ref attribute for the var_ref entity of a variable_object is prohibited.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M216"/></axsl:template><axsl:template match="text()" priority="-1" mode="M216"/><axsl:template match="@*|node()" priority="-2" mode="M216"><axsl:apply-templates select="@*|*" mode="M216"/></axsl:template>

<!--PATTERN ind-def_varobjvar_ref_exists-->


	<!--RULE -->
<axsl:template match="ind-def:variable_object/ind-def:var_ref" priority="1000" mode="M217"><axsl:variable name="varId" select="."/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id = $varId]"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - referenced variable <axsl:text/><axsl:value-of select="."/><axsl:text/> not found. The var_ref entity must hold a variable id that exists in the document.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M217"/></axsl:template><axsl:template match="text()" priority="-1" mode="M217"/><axsl:template match="@*|node()" priority="-2" mode="M217"><axsl:apply-templates select="@*|*" mode="M217"/></axsl:template>

<!--PATTERN ind-def_varstevar_ref-->


	<!--RULE -->
<axsl:template match="ind-def:variable_state/ind-def:var_ref" priority="1000" mode="M218">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@var_ref)"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - var_ref attribute for the var_ref entity of a variable_state is prohibited.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M218"/></axsl:template><axsl:template match="text()" priority="-1" mode="M218"/><axsl:template match="@*|node()" priority="-2" mode="M218"><axsl:apply-templates select="@*|*" mode="M218"/></axsl:template>

<!--PATTERN ind-def_varstevar_ref_exists-->


	<!--RULE -->
<axsl:template match="ind-def:variable_state/ind-def:var_ref" priority="1000" mode="M219"><axsl:variable name="varId" select="."/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id =  $varId]"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - referenced variable <axsl:text/><axsl:value-of select="."/><axsl:text/> not found. The var_ref entity must hold a variable id that exists in the document.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M219"/></axsl:template><axsl:template match="text()" priority="-1" mode="M219"/><axsl:template match="@*|node()" priority="-2" mode="M219"><axsl:apply-templates select="@*|*" mode="M219"/></axsl:template>

<!--PATTERN ind-def_xmltst-->


	<!--RULE -->
<axsl:template match="ind-def:xmlfilecontent_test/ind-def:object" priority="1001" mode="M220">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:xmlfilecontent_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a xmlfilecontent_test must reference a xmlfilecontent_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M220"/></axsl:template>

	<!--RULE -->
<axsl:template match="ind-def:xmlfilecontent_test/ind-def:state" priority="1000" mode="M220">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:xmlfilecontent_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a xmlfilecontent_test must reference a xmlfilecontent_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M220"/></axsl:template><axsl:template match="text()" priority="-1" mode="M220"/><axsl:template match="@*|node()" priority="-2" mode="M220"><axsl:apply-templates select="@*|*" mode="M220"/></axsl:template>

<!--PATTERN ind-def_xmlfilecontent_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ind-def:xmlfilecontent_object//oval-def:filter" priority="1000" mode="M221"><axsl:variable name="parent_object" select="ancestor::ind-def:xmlfilecontent_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#independent') and ($state_name='xmlfilecontent_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M221"/></axsl:template><axsl:template match="text()" priority="-1" mode="M221"/><axsl:template match="@*|node()" priority="-2" mode="M221"><axsl:apply-templates select="@*|*" mode="M221"/></axsl:template>

<!--PATTERN ind-def_xmlobjfilepath-->


	<!--RULE -->
<axsl:template match="ind-def:xmlfilecontent_object/ind-def:filepath" priority="1000" mode="M222">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@max_depth or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M222"/></axsl:template><axsl:template match="text()" priority="-1" mode="M222"/><axsl:template match="@*|node()" priority="-2" mode="M222"><axsl:apply-templates select="@*|*" mode="M222"/></axsl:template>

<!--PATTERN ind-def_xmlobjfilepath2-->


	<!--RULE -->
<axsl:template match="ind-def:xmlfilecontent_object/ind-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M223">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M223"/></axsl:template><axsl:template match="text()" priority="-1" mode="M223"/><axsl:template match="@*|node()" priority="-2" mode="M223"><axsl:apply-templates select="@*|*" mode="M223"/></axsl:template>

<!--PATTERN ind-def_xmlobjpath-->


	<!--RULE -->
<axsl:template match="ind-def:xmlfilecontent_object/ind-def:path[not(@operation='equals' or not(@operation))]" priority="1000" mode="M224">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::ind-def:behaviors[@recurse])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M224"/></axsl:template><axsl:template match="text()" priority="-1" mode="M224"/><axsl:template match="@*|node()" priority="-2" mode="M224"><axsl:apply-templates select="@*|*" mode="M224"/></axsl:template>

<!--PATTERN ind-def_xmlobjfilename-->


	<!--RULE -->
<axsl:template match="ind-def:xmlfilecontent_object/ind-def:filename" priority="1000" mode="M225">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or not(.='') or (.='' and @operation = 'pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M225"/></axsl:template><axsl:template match="text()" priority="-1" mode="M225"/><axsl:template match="@*|node()" priority="-2" mode="M225"><axsl:apply-templates select="@*|*" mode="M225"/></axsl:template>

<!--PATTERN ind-def_xmlobjxpath-->


	<!--RULE -->
<axsl:template match="ind-def:xmlfilecontent_object/ind-def:xpath" priority="1000" mode="M226">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the xpath entity of a xmlfilecontent_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M226"/></axsl:template><axsl:template match="text()" priority="-1" mode="M226"/><axsl:template match="@*|node()" priority="-2" mode="M226"><axsl:apply-templates select="@*|*" mode="M226"/></axsl:template>

<!--PATTERN ind-def_ldaptype_timestamp_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:states/ind-def:ldap_state/ind-def:ldaptype|oval-def:oval_definitions/oval-def:states/ind-def:ldap57_state/ind-def:ldaptype" priority="1000" mode="M227">

		<!--REPORT -->
<axsl:if test=".='LDAPTYPE_TIMESTAMP'">
                                                                    DEPRECATED ELEMENT VALUE IN: ldap_state ELEMENT VALUE: <axsl:text/><axsl:value-of select="."/><axsl:text/>
                                                              <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M227"/></axsl:template><axsl:template match="text()" priority="-1" mode="M227"/><axsl:template match="@*|node()" priority="-2" mode="M227"><axsl:apply-templates select="@*|*" mode="M227"/></axsl:template>

<!--PATTERN ind-def_ldaptype_email_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:states/ind-def:ldap_state/ind-def:ldaptype|oval-def:oval_definitions/oval-def:states/ind-def:ldap57_state/ind-def:ldaptype" priority="1000" mode="M228">

		<!--REPORT -->
<axsl:if test=".='LDAPTYPE_EMAIL'">
                                                                    DEPRECATED ELEMENT VALUE IN: ldap_state ELEMENT VALUE: <axsl:text/><axsl:value-of select="."/><axsl:text/>
                                                              <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M228"/></axsl:template><axsl:template match="text()" priority="-1" mode="M228"/><axsl:template match="@*|node()" priority="-2" mode="M228"><axsl:apply-templates select="@*|*" mode="M228"/></axsl:template>

<!--PATTERN ios_acltst-->


	<!--RULE -->
<axsl:template match="ios-def:acl_test/ios-def:object" priority="1001" mode="M229">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:acl_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a acl_test must reference a acl_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M229"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:acl_test/ios-def:state" priority="1000" mode="M229">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:acl_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a acl_test must reference a acl_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M229"/></axsl:template><axsl:template match="text()" priority="-1" mode="M229"/><axsl:template match="@*|node()" priority="-2" mode="M229"><axsl:apply-templates select="@*|*" mode="M229"/></axsl:template>

<!--PATTERN ios_acl_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:acl_object//oval-def:filter" priority="1000" mode="M230"><axsl:variable name="parent_object" select="ancestor::ios-def:acl_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='acl_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M230"/></axsl:template><axsl:template match="text()" priority="-1" mode="M230"/><axsl:template match="@*|node()" priority="-2" mode="M230"><axsl:apply-templates select="@*|*" mode="M230"/></axsl:template>

<!--PATTERN ios_bgpneighbortst-->


	<!--RULE -->
<axsl:template match="ios-def:bgpneighbor_test/ios-def:object" priority="1001" mode="M231">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:bgpneighbor_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a bgpneighbor_test must reference a bgpneighbor_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M231"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:bgpneighbor_test/ios-def:state" priority="1000" mode="M231">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:bgpneighbor_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a bgpneighbor_test must reference a bgpneighbor_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M231"/></axsl:template><axsl:template match="text()" priority="-1" mode="M231"/><axsl:template match="@*|node()" priority="-2" mode="M231"><axsl:apply-templates select="@*|*" mode="M231"/></axsl:template>

<!--PATTERN ios_bgpneighbor_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:bgpneighbor_object//oval-def:filter" priority="1000" mode="M232"><axsl:variable name="parent_object" select="ancestor::ios-def:bgpneighbor_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='bgpneighbor_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M232"/></axsl:template><axsl:template match="text()" priority="-1" mode="M232"/><axsl:template match="@*|node()" priority="-2" mode="M232"><axsl:apply-templates select="@*|*" mode="M232"/></axsl:template>

<!--PATTERN ios-def_globaltst-->


	<!--RULE -->
<axsl:template match="ios-def:global_test/ios-def:object" priority="1001" mode="M233">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:global_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a global_test must reference a global_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M233"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:global_test/ios-def:state" priority="1000" mode="M233">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:global_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a global_test must reference a global_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M233"/></axsl:template><axsl:template match="text()" priority="-1" mode="M233"/><axsl:template match="@*|node()" priority="-2" mode="M233"><axsl:apply-templates select="@*|*" mode="M233"/></axsl:template>

<!--PATTERN ios-def_global_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:global_object//oval-def:filter" priority="1000" mode="M234"><axsl:variable name="parent_object" select="ancestor::ios-def:global_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='global_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M234"/></axsl:template><axsl:template match="text()" priority="-1" mode="M234"/><axsl:template match="@*|node()" priority="-2" mode="M234"><axsl:apply-templates select="@*|*" mode="M234"/></axsl:template>

<!--PATTERN ios-def_interfacetst-->


	<!--RULE -->
<axsl:template match="ios-def:interface_test/ios-def:object" priority="1001" mode="M235">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:interface_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an interface_test must reference an interface_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M235"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:interface_test/ios-def:state" priority="1000" mode="M235">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:interface_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an interface_test must reference an interface_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M235"/></axsl:template><axsl:template match="text()" priority="-1" mode="M235"/><axsl:template match="@*|node()" priority="-2" mode="M235"><axsl:apply-templates select="@*|*" mode="M235"/></axsl:template>

<!--PATTERN ios-def_interface_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:interface_object//oval-def:filter" priority="1000" mode="M236"><axsl:variable name="parent_object" select="ancestor::ios-def:interface_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='interface_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M236"/></axsl:template><axsl:template match="text()" priority="-1" mode="M236"/><axsl:template match="@*|node()" priority="-2" mode="M236"><axsl:apply-templates select="@*|*" mode="M236"/></axsl:template>

<!--PATTERN ios-def_interfacestenoipdbc-->


	<!--RULE -->
<axsl:template match="ios-def:interface_state/ios-def:no_ip_directed_broadcast_command" priority="1000" mode="M237">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M237"/></axsl:template><axsl:template match="text()" priority="-1" mode="M237"/><axsl:template match="@*|node()" priority="-2" mode="M237"><axsl:apply-templates select="@*|*" mode="M237"/></axsl:template>

<!--PATTERN ios-def_interfaceste_urpf_command_dep-->


	<!--RULE -->
<axsl:template match="ios-def:interface_state/ios-def:urpf_command" priority="1000" mode="M238">

		<!--REPORT -->
<axsl:if test="true()">Warning: DEPRECATED ENTITY: <axsl:text/><axsl:value-of select="name()"/><axsl:text/>. This entity has been deprecated because it was replaced by the ipv4_urpf_command and ipv6_urpf_command entities.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M238"/></axsl:template><axsl:template match="text()" priority="-1" mode="M238"/><axsl:template match="@*|node()" priority="-2" mode="M238"><axsl:apply-templates select="@*|*" mode="M238"/></axsl:template>

<!--PATTERN ios-def_linetst-->


	<!--RULE -->
<axsl:template match="ios-def:line_test/ios-def:object" priority="1001" mode="M239">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:line_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a line_test must reference a line_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M239"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:line_test/ios-def:state" priority="1000" mode="M239">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:line_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a line_test must reference a line_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M239"/></axsl:template><axsl:template match="text()" priority="-1" mode="M239"/><axsl:template match="@*|node()" priority="-2" mode="M239"><axsl:apply-templates select="@*|*" mode="M239"/></axsl:template>

<!--PATTERN ios-def_line_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:line_object//oval-def:filter" priority="1000" mode="M240"><axsl:variable name="parent_object" select="ancestor::ios-def:line_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='line_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M240"/></axsl:template><axsl:template match="text()" priority="-1" mode="M240"/><axsl:template match="@*|node()" priority="-2" mode="M240"><axsl:apply-templates select="@*|*" mode="M240"/></axsl:template>

<!--PATTERN ios_routertst-->


	<!--RULE -->
<axsl:template match="ios-def:router_test/ios-def:object" priority="1001" mode="M241">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:router_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a router_test must reference a router_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M241"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:router_test/ios-def:state" priority="1000" mode="M241">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:router_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a router_test must reference a router_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M241"/></axsl:template><axsl:template match="text()" priority="-1" mode="M241"/><axsl:template match="@*|node()" priority="-2" mode="M241"><axsl:apply-templates select="@*|*" mode="M241"/></axsl:template>

<!--PATTERN ios_router_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:router_object//oval-def:filter" priority="1000" mode="M242"><axsl:variable name="parent_object" select="ancestor::ios-def:router_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='router_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M242"/></axsl:template><axsl:template match="text()" priority="-1" mode="M242"/><axsl:template match="@*|node()" priority="-2" mode="M242"><axsl:apply-templates select="@*|*" mode="M242"/></axsl:template>

<!--PATTERN ios_routingprotocolauthintftst-->


	<!--RULE -->
<axsl:template match="ios-def:routingprotocolauthintf_test/ios-def:object" priority="1001" mode="M243">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:routingprotocolauthintf_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a routingprotocolauthintf_test must reference a routingprotocolauthintf_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M243"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:routingprotocolauthintf_test/ios-def:state" priority="1000" mode="M243">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:routingprotocolauthintf_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a routingprotocolauthintf_test must reference a routingprotocolauthintf_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M243"/></axsl:template><axsl:template match="text()" priority="-1" mode="M243"/><axsl:template match="@*|node()" priority="-2" mode="M243"><axsl:apply-templates select="@*|*" mode="M243"/></axsl:template>

<!--PATTERN ios_routingprotocolauthintf_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:routingprotocolauthintf_object//oval-def:filter" priority="1000" mode="M244"><axsl:variable name="parent_object" select="ancestor::ios-def:routingprotocolauthintf_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='routingprotocolauthintf_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M244"/></axsl:template><axsl:template match="text()" priority="-1" mode="M244"/><axsl:template match="@*|node()" priority="-2" mode="M244"><axsl:apply-templates select="@*|*" mode="M244"/></axsl:template>

<!--PATTERN ios_sectiontst-->


	<!--RULE -->
<axsl:template match="ios-def:section_test/ios-def:object" priority="1001" mode="M245">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:section_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a section_test must reference a section_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M245"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:section_test/ios-def:state" priority="1000" mode="M245">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:section_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a section_test must reference a section_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M245"/></axsl:template><axsl:template match="text()" priority="-1" mode="M245"/><axsl:template match="@*|node()" priority="-2" mode="M245"><axsl:apply-templates select="@*|*" mode="M245"/></axsl:template>

<!--PATTERN ios_section_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:section_object//oval-def:filter" priority="1000" mode="M246"><axsl:variable name="parent_object" select="ancestor::ios-def:section_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='section_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M246"/></axsl:template><axsl:template match="text()" priority="-1" mode="M246"/><axsl:template match="@*|node()" priority="-2" mode="M246"><axsl:apply-templates select="@*|*" mode="M246"/></axsl:template>

<!--PATTERN ios-def_snmptst-->


	<!--RULE -->
<axsl:template match="ios-def:snmp_test/ios-def:object" priority="1001" mode="M247">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:snmp_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a snmp_test must reference a snmp_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M247"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:snmp_test/ios-def:state" priority="1000" mode="M247">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:snmp_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a snmp_test must reference a snmp_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M247"/></axsl:template><axsl:template match="text()" priority="-1" mode="M247"/><axsl:template match="@*|node()" priority="-2" mode="M247"><axsl:apply-templates select="@*|*" mode="M247"/></axsl:template>

<!--PATTERN ios_communitytst-->


	<!--RULE -->
<axsl:template match="ios-def:snmpcommunity_test/ios-def:object" priority="1001" mode="M248">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:snmpcommunity_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmpcommunity_test must reference an snmpcommunity_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M248"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:snmpcommunity_test/ios-def:state" priority="1000" mode="M248">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:snmpcommunity_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmpcommunity_test must reference an snmpcommunity_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M248"/></axsl:template><axsl:template match="text()" priority="-1" mode="M248"/><axsl:template match="@*|node()" priority="-2" mode="M248"><axsl:apply-templates select="@*|*" mode="M248"/></axsl:template>

<!--PATTERN ios_snmpcommunity_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:snmpcommunity_object//oval-def:filter" priority="1000" mode="M249"><axsl:variable name="parent_object" select="ancestor::ios-def:snmpcommunity_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='snmpcommunity_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M249"/></axsl:template><axsl:template match="text()" priority="-1" mode="M249"/><axsl:template match="@*|node()" priority="-2" mode="M249"><axsl:apply-templates select="@*|*" mode="M249"/></axsl:template>

<!--PATTERN ios_grouptst-->


	<!--RULE -->
<axsl:template match="ios-def:snmpgroup_test/ios-def:object" priority="1001" mode="M250">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:snmpgroup_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmpgroup_test must reference an snmpgroup_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M250"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:snmpgroup_test/ios-def:state" priority="1000" mode="M250">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:snmpgroup_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmpgroup_test must reference an snmpgroup_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M250"/></axsl:template><axsl:template match="text()" priority="-1" mode="M250"/><axsl:template match="@*|node()" priority="-2" mode="M250"><axsl:apply-templates select="@*|*" mode="M250"/></axsl:template>

<!--PATTERN ios_snmpgroup_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:snmpgroup_object//oval-def:filter" priority="1000" mode="M251"><axsl:variable name="parent_object" select="ancestor::ios-def:snmpgroup_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='snmpgroup_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M251"/></axsl:template><axsl:template match="text()" priority="-1" mode="M251"/><axsl:template match="@*|node()" priority="-2" mode="M251"><axsl:apply-templates select="@*|*" mode="M251"/></axsl:template>

<!--PATTERN ios_hosttst-->


	<!--RULE -->
<axsl:template match="ios-def:snmphost_test/ios-def:object" priority="1001" mode="M252">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:snmphost_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmphost_test must reference an snmphost_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M252"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:snmphost_test/ios-def:state" priority="1000" mode="M252">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:snmphost_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmphost_test must reference an snmphost_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M252"/></axsl:template><axsl:template match="text()" priority="-1" mode="M252"/><axsl:template match="@*|node()" priority="-2" mode="M252"><axsl:apply-templates select="@*|*" mode="M252"/></axsl:template>

<!--PATTERN ios_snmphost_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:snmphost_object//oval-def:filter" priority="1000" mode="M253"><axsl:variable name="parent_object" select="ancestor::ios-def:snmphost_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='snmphost_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M253"/></axsl:template><axsl:template match="text()" priority="-1" mode="M253"/><axsl:template match="@*|node()" priority="-2" mode="M253"><axsl:apply-templates select="@*|*" mode="M253"/></axsl:template>

<!--PATTERN ios_usertst-->


	<!--RULE -->
<axsl:template match="ios-def:snmpuser_test/ios-def:object" priority="1001" mode="M254">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:snmpuser_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmpuser_test must reference an snmpuser_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M254"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:snmpuser_test/ios-def:state" priority="1000" mode="M254">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:snmpuser_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmpuser_test must reference an snmpuser_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M254"/></axsl:template><axsl:template match="text()" priority="-1" mode="M254"/><axsl:template match="@*|node()" priority="-2" mode="M254"><axsl:apply-templates select="@*|*" mode="M254"/></axsl:template>

<!--PATTERN ios_snmpuser_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:snmpuser_object//oval-def:filter" priority="1000" mode="M255"><axsl:variable name="parent_object" select="ancestor::ios-def:snmpuser_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='snmpuser_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M255"/></axsl:template><axsl:template match="text()" priority="-1" mode="M255"/><axsl:template match="@*|node()" priority="-2" mode="M255"><axsl:apply-templates select="@*|*" mode="M255"/></axsl:template>

<!--PATTERN ios_viewtst-->


	<!--RULE -->
<axsl:template match="ios-def:snmpview_test/ios-def:object" priority="1001" mode="M256">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:snmpview_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmpview_test must reference an snmpview_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M256"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:snmpview_test/ios-def:state" priority="1000" mode="M256">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:snmpview_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmpview_test must reference an snmpview_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M256"/></axsl:template><axsl:template match="text()" priority="-1" mode="M256"/><axsl:template match="@*|node()" priority="-2" mode="M256"><axsl:apply-templates select="@*|*" mode="M256"/></axsl:template>

<!--PATTERN ios_snmpview_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="ios-def:snmpview_object//oval-def:filter" priority="1000" mode="M257"><axsl:variable name="parent_object" select="ancestor::ios-def:snmpview_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#ios') and ($state_name='snmpview_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M257"/></axsl:template><axsl:template match="text()" priority="-1" mode="M257"/><axsl:template match="@*|node()" priority="-2" mode="M257"><axsl:apply-templates select="@*|*" mode="M257"/></axsl:template>

<!--PATTERN ios-def_tclshtst-->


	<!--RULE -->
<axsl:template match="ios-def:tclsh_test/ios-def:object" priority="1001" mode="M258">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:tclsh_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a tclsh_test must reference a tclsh_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M258"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:tclsh_test/ios-def:state" priority="1000" mode="M258">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:tclsh_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a tclsh_test must reference a tclsh_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M258"/></axsl:template><axsl:template match="text()" priority="-1" mode="M258"/><axsl:template match="@*|node()" priority="-2" mode="M258"><axsl:apply-templates select="@*|*" mode="M258"/></axsl:template>

<!--PATTERN ios-def_ver55tst-->


	<!--RULE -->
<axsl:template match="ios-def:version55_test/ios-def:object" priority="1001" mode="M259">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:version55_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a version55_test must reference a version_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M259"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:version55_test/ios-def:state" priority="1000" mode="M259">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:version55_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a version55_test must reference a version_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M259"/></axsl:template><axsl:template match="text()" priority="-1" mode="M259"/><axsl:template match="@*|node()" priority="-2" mode="M259"><axsl:apply-templates select="@*|*" mode="M259"/></axsl:template>

<!--PATTERN ios-def_vertst_dep-->


	<!--RULE -->
<axsl:template match="ios-def:version_test" priority="1000" mode="M260">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M260"/></axsl:template><axsl:template match="text()" priority="-1" mode="M260"/><axsl:template match="@*|node()" priority="-2" mode="M260"><axsl:apply-templates select="@*|*" mode="M260"/></axsl:template>

<!--PATTERN ios-def_vertst-->


	<!--RULE -->
<axsl:template match="ios-def:version_test/ios-def:object" priority="1001" mode="M261">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:version_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a version_test must reference a version_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M261"/></axsl:template>

	<!--RULE -->
<axsl:template match="ios-def:version_test/ios-def:state" priority="1000" mode="M261">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:version_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a version_test must reference a version_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M261"/></axsl:template><axsl:template match="text()" priority="-1" mode="M261"/><axsl:template match="@*|node()" priority="-2" mode="M261"><axsl:apply-templates select="@*|*" mode="M261"/></axsl:template>

<!--PATTERN ios-def_verobj_dep-->


	<!--RULE -->
<axsl:template match="ios-def:version_object" priority="1000" mode="M262">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M262"/></axsl:template><axsl:template match="text()" priority="-1" mode="M262"/><axsl:template match="@*|node()" priority="-2" mode="M262"><axsl:apply-templates select="@*|*" mode="M262"/></axsl:template>

<!--PATTERN ios-def_verste_dep-->


	<!--RULE -->
<axsl:template match="ios-def:version_state" priority="1000" mode="M263">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M263"/></axsl:template><axsl:template match="text()" priority="-1" mode="M263"/><axsl:template match="@*|node()" priority="-2" mode="M263"><axsl:apply-templates select="@*|*" mode="M263"/></axsl:template>

<!--PATTERN ios-def_salut_none_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:states/ios-def:acl_state/ios-def:use" priority="1000" mode="M264">

		<!--REPORT -->
<axsl:if test=".='NONE'">
                                                       DEPRECATED ELEMENT VALUE IN: acl_state ELEMENT VALUE: <axsl:text/><axsl:value-of select="."/><axsl:text/>
                                                 <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M264"/></axsl:template><axsl:template match="text()" priority="-1" mode="M264"/><axsl:template match="@*|node()" priority="-2" mode="M264"><axsl:apply-templates select="@*|*" mode="M264"/></axsl:template>

<!--PATTERN ios-def_sratst_null_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:states/ios-def:routingprotocolauthintf_state/ios-def:auth_type" priority="1000" mode="M265">

		<!--REPORT -->
<axsl:if test=".='NULL'">
                                                       DEPRECATED ELEMENT VALUE IN: routingprotocolauthintf_state ELEMENT VALUE: <axsl:text/><axsl:value-of select="."/><axsl:text/>
                                                 <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M265"/></axsl:template><axsl:template match="text()" priority="-1" mode="M265"/><axsl:template match="@*|node()" priority="-2" mode="M265"><axsl:apply-templates select="@*|*" mode="M265"/></axsl:template>

<!--PATTERN iosxe-def_globaltst-->


	<!--RULE -->
<axsl:template match="iosxe-def:global_test/iosxe-def:object" priority="1001" mode="M266">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:global_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a global_test must reference a global_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M266"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:global_test/iosxe-def:state" priority="1000" mode="M266">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:global_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a global_test must reference a global_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M266"/></axsl:template><axsl:template match="text()" priority="-1" mode="M266"/><axsl:template match="@*|node()" priority="-2" mode="M266"><axsl:apply-templates select="@*|*" mode="M266"/></axsl:template>

<!--PATTERN iosxe-def_global_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:global_object//oval-def:filter" priority="1000" mode="M267"><axsl:variable name="parent_object" select="ancestor::iosxe-def:global_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='global_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M267"/></axsl:template><axsl:template match="text()" priority="-1" mode="M267"/><axsl:template match="@*|node()" priority="-2" mode="M267"><axsl:apply-templates select="@*|*" mode="M267"/></axsl:template>

<!--PATTERN iosxe-def_linetst-->


	<!--RULE -->
<axsl:template match="iosxe-def:line_test/iosxe-def:object" priority="1001" mode="M268">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:line_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a line_test must reference a line_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M268"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:line_test/iosxe-def:state" priority="1000" mode="M268">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:line_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a line_test must reference a line_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M268"/></axsl:template><axsl:template match="text()" priority="-1" mode="M268"/><axsl:template match="@*|node()" priority="-2" mode="M268"><axsl:apply-templates select="@*|*" mode="M268"/></axsl:template>

<!--PATTERN iosxe-def_line_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:line_object//oval-def:filter" priority="1000" mode="M269"><axsl:variable name="parent_object" select="ancestor::iosxe-def:line_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='line_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M269"/></axsl:template><axsl:template match="text()" priority="-1" mode="M269"/><axsl:template match="@*|node()" priority="-2" mode="M269"><axsl:apply-templates select="@*|*" mode="M269"/></axsl:template>

<!--PATTERN iosxe-def_versiontst-->


	<!--RULE -->
<axsl:template match="iosxe-def:version_test/iosxe-def:object" priority="1001" mode="M270">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:version_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a version_test must reference a version_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M270"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:version_test/iosxe-def:state" priority="1000" mode="M270">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:version_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a version_test must reference a version_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M270"/></axsl:template><axsl:template match="text()" priority="-1" mode="M270"/><axsl:template match="@*|node()" priority="-2" mode="M270"><axsl:apply-templates select="@*|*" mode="M270"/></axsl:template>

<!--PATTERN iosxe-def_versionste_platform_dep-->


	<!--RULE -->
<axsl:template match="iosxe-def:version_state/iosxe-def:platform" priority="1000" mode="M271">

		<!--REPORT -->
<axsl:if test="true()">Warning: DEPRECATED ENTITY: <axsl:text/><axsl:value-of select="name()"/><axsl:text/>. This entity has been deprecated because it cannot be reliably collected.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M271"/></axsl:template><axsl:template match="text()" priority="-1" mode="M271"/><axsl:template match="@*|node()" priority="-2" mode="M271"><axsl:apply-templates select="@*|*" mode="M271"/></axsl:template>

<!--PATTERN iosxe-def_versionste_rp_dep-->


	<!--RULE -->
<axsl:template match="iosxe-def:version_state/iosxe-def:rp" priority="1000" mode="M272">

		<!--REPORT -->
<axsl:if test="true()">Warning: DEPRECATED ENTITY: <axsl:text/><axsl:value-of select="name()"/><axsl:text/>. This entity has been deprecated because it cannot be reliably collected.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M272"/></axsl:template><axsl:template match="text()" priority="-1" mode="M272"/><axsl:template match="@*|node()" priority="-2" mode="M272"><axsl:apply-templates select="@*|*" mode="M272"/></axsl:template>

<!--PATTERN iosxe-def_versionste_pkg_dep-->


	<!--RULE -->
<axsl:template match="iosxe-def:version_state/iosxe-def:pkg" priority="1000" mode="M273">

		<!--REPORT -->
<axsl:if test="true()">Warning: DEPRECATED ENTITY: <axsl:text/><axsl:value-of select="name()"/><axsl:text/>. This entity has been deprecated because it cannot be reliably collected.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M273"/></axsl:template><axsl:template match="text()" priority="-1" mode="M273"/><axsl:template match="@*|node()" priority="-2" mode="M273"><axsl:apply-templates select="@*|*" mode="M273"/></axsl:template>

<!--PATTERN iosxe-def_versionste_ios_release_dep-->


	<!--RULE -->
<axsl:template match="iosxe-def:version_state/iosxe-def:ios_release" priority="1000" mode="M274">

		<!--REPORT -->
<axsl:if test="true()">Warning: DEPRECATED ENTITY: <axsl:text/><axsl:value-of select="name()"/><axsl:text/>. This entity has been deprecated because it is irrelevant to the IOS-XE version.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M274"/></axsl:template><axsl:template match="text()" priority="-1" mode="M274"/><axsl:template match="@*|node()" priority="-2" mode="M274"><axsl:apply-templates select="@*|*" mode="M274"/></axsl:template>

<!--PATTERN iosxe-def_versionste_ios_train_dep-->


	<!--RULE -->
<axsl:template match="iosxe-def:version_state/iosxe-def:ios_train" priority="1000" mode="M275">

		<!--REPORT -->
<axsl:if test="true()">Warning: DEPRECATED ENTITY: <axsl:text/><axsl:value-of select="name()"/><axsl:text/>. This entity has been deprecated because it is irrelevant to the IOS-XE version.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M275"/></axsl:template><axsl:template match="text()" priority="-1" mode="M275"/><axsl:template match="@*|node()" priority="-2" mode="M275"><axsl:apply-templates select="@*|*" mode="M275"/></axsl:template>

<!--PATTERN iosxe-def_interfacetst-->


	<!--RULE -->
<axsl:template match="iosxe-def:interface_test/iosxe-def:object" priority="1001" mode="M276">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:interface_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an interface_test must reference an interface_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M276"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:interface_test/iosxe-def:state" priority="1000" mode="M276">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:interface_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an interface_test must reference an interface_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M276"/></axsl:template><axsl:template match="text()" priority="-1" mode="M276"/><axsl:template match="@*|node()" priority="-2" mode="M276"><axsl:apply-templates select="@*|*" mode="M276"/></axsl:template>

<!--PATTERN iosxe-def_interfaceste_urpf_command_dep-->


	<!--RULE -->
<axsl:template match="iosxe-def:interface_state/iosxe-def:urpf_command" priority="1000" mode="M277">

		<!--REPORT -->
<axsl:if test="true()">Warning: DEPRECATED ENTITY: <axsl:text/><axsl:value-of select="name()"/><axsl:text/>. This entity has been deprecated because it was replaced by the ipv4_urpf_command and ipv6_urpf_command entities.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M277"/></axsl:template><axsl:template match="text()" priority="-1" mode="M277"/><axsl:template match="@*|node()" priority="-2" mode="M277"><axsl:apply-templates select="@*|*" mode="M277"/></axsl:template>

<!--PATTERN iosxe-def_sectiontst-->


	<!--RULE -->
<axsl:template match="iosxe-def:section_test/iosxe-def:object" priority="1001" mode="M278">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:section_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a section_test must reference a section_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M278"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:section_test/iosxe-def:state" priority="1000" mode="M278">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:section_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a section_test must reference a section_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M278"/></axsl:template><axsl:template match="text()" priority="-1" mode="M278"/><axsl:template match="@*|node()" priority="-2" mode="M278"><axsl:apply-templates select="@*|*" mode="M278"/></axsl:template>

<!--PATTERN iosxe-def_section_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:section_object//oval-def:filter" priority="1000" mode="M279"><axsl:variable name="parent_object" select="ancestor::iosxe-def:section_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='section_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M279"/></axsl:template><axsl:template match="text()" priority="-1" mode="M279"/><axsl:template match="@*|node()" priority="-2" mode="M279"><axsl:apply-templates select="@*|*" mode="M279"/></axsl:template>

<!--PATTERN iosxe-def_routertst-->


	<!--RULE -->
<axsl:template match="iosxe-def:router_test/iosxe-def:object" priority="1001" mode="M280">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:router_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a router_test must reference a router_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M280"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:router_test/iosxe-def:state" priority="1000" mode="M280">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:router_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a router_test must reference a router_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M280"/></axsl:template><axsl:template match="text()" priority="-1" mode="M280"/><axsl:template match="@*|node()" priority="-2" mode="M280"><axsl:apply-templates select="@*|*" mode="M280"/></axsl:template>

<!--PATTERN iosxe-def_router_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:router_object//oval-def:filter" priority="1000" mode="M281"><axsl:variable name="parent_object" select="ancestor::iosxe-def:router_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='router_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M281"/></axsl:template><axsl:template match="text()" priority="-1" mode="M281"/><axsl:template match="@*|node()" priority="-2" mode="M281"><axsl:apply-templates select="@*|*" mode="M281"/></axsl:template>

<!--PATTERN iosxe-def_bgpneighbortst-->


	<!--RULE -->
<axsl:template match="iosxe-def:bgpneighbor_test/iosxe-def:object" priority="1001" mode="M282">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:bgpneighbor_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a bgpneighbor_test must reference a bgpneighbor_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M282"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:bgpneighbor_test/iosxe-def:state" priority="1000" mode="M282">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:bgpneighbor_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a bgpneighbor_test must reference a bgpneighbor_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M282"/></axsl:template><axsl:template match="text()" priority="-1" mode="M282"/><axsl:template match="@*|node()" priority="-2" mode="M282"><axsl:apply-templates select="@*|*" mode="M282"/></axsl:template>

<!--PATTERN iosxe-def_bgpneighbor_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:bgpneighbor_object//oval-def:filter" priority="1000" mode="M283"><axsl:variable name="parent_object" select="ancestor::iosxe-def:bgpneighbor_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='bgpneighbor_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M283"/></axsl:template><axsl:template match="text()" priority="-1" mode="M283"/><axsl:template match="@*|node()" priority="-2" mode="M283"><axsl:apply-templates select="@*|*" mode="M283"/></axsl:template>

<!--PATTERN iosxe-def_routingprotocolauthintftst-->


	<!--RULE -->
<axsl:template match="iosxe-def:routingprotocolauthintf_test/iosxe-def:object" priority="1001" mode="M284">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:routingprotocolauthintf_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a routingprotocolauthintf_test must reference a routingprotocolauthintf_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M284"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:routingprotocolauthintf_test/iosxe-def:state" priority="1000" mode="M284">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:routingprotocolauthintf_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a routingprotocolauthintf_test must reference a routingprotocolauthintf_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M284"/></axsl:template><axsl:template match="text()" priority="-1" mode="M284"/><axsl:template match="@*|node()" priority="-2" mode="M284"><axsl:apply-templates select="@*|*" mode="M284"/></axsl:template>

<!--PATTERN iosxe-def_routingprotocolauthintf_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:routingprotocolauthintf_object//oval-def:filter" priority="1000" mode="M285"><axsl:variable name="parent_object" select="ancestor::iosxe-def:routingprotocolauthintf_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='routingprotocolauthintf_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M285"/></axsl:template><axsl:template match="text()" priority="-1" mode="M285"/><axsl:template match="@*|node()" priority="-2" mode="M285"><axsl:apply-templates select="@*|*" mode="M285"/></axsl:template>

<!--PATTERN iosxe-def_acltst-->


	<!--RULE -->
<axsl:template match="iosxe-def:acl_test/iosxe-def:object" priority="1001" mode="M286">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:acl_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a acl_test must reference a acl_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M286"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:acl_test/iosxe-def:state" priority="1000" mode="M286">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:acl_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a acl_test must reference a acl_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M286"/></axsl:template><axsl:template match="text()" priority="-1" mode="M286"/><axsl:template match="@*|node()" priority="-2" mode="M286"><axsl:apply-templates select="@*|*" mode="M286"/></axsl:template>

<!--PATTERN iosxe-def_acl_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:acl_object//oval-def:filter" priority="1000" mode="M287"><axsl:variable name="parent_object" select="ancestor::iosxe-def:acl_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='acl_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M287"/></axsl:template><axsl:template match="text()" priority="-1" mode="M287"/><axsl:template match="@*|node()" priority="-2" mode="M287"><axsl:apply-templates select="@*|*" mode="M287"/></axsl:template>

<!--PATTERN iosxe-def_hosttst-->


	<!--RULE -->
<axsl:template match="iosxe-def:snmphost_test/iosxe-def:object" priority="1001" mode="M288">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:snmphost_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmphost_test must reference an snmphost_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M288"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:snmphost_test/iosxe-def:state" priority="1000" mode="M288">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:snmphost_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmphost_test must reference an snmphost_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M288"/></axsl:template><axsl:template match="text()" priority="-1" mode="M288"/><axsl:template match="@*|node()" priority="-2" mode="M288"><axsl:apply-templates select="@*|*" mode="M288"/></axsl:template>

<!--PATTERN iosxe-def_snmphost_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:snmphost_object//oval-def:filter" priority="1000" mode="M289"><axsl:variable name="parent_object" select="ancestor::iosxe-def:snmphost_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='snmphost_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M289"/></axsl:template><axsl:template match="text()" priority="-1" mode="M289"/><axsl:template match="@*|node()" priority="-2" mode="M289"><axsl:apply-templates select="@*|*" mode="M289"/></axsl:template>

<!--PATTERN iosxe-def_communitytst-->


	<!--RULE -->
<axsl:template match="iosxe-def:snmpcommunity_test/iosxe-def:object" priority="1001" mode="M290">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:snmpcommunity_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmpcommunity_test must reference an snmpcommunity_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M290"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:snmpcommunity_test/iosxe-def:state" priority="1000" mode="M290">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:snmpcommunity_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmpcommunity_test must reference an snmpcommunity_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M290"/></axsl:template><axsl:template match="text()" priority="-1" mode="M290"/><axsl:template match="@*|node()" priority="-2" mode="M290"><axsl:apply-templates select="@*|*" mode="M290"/></axsl:template>

<!--PATTERN iosxe-def_snmpcommunity_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:snmpcommunity_object//oval-def:filter" priority="1000" mode="M291"><axsl:variable name="parent_object" select="ancestor::iosxe-def:snmpcommunity_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='snmpcommunity_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M291"/></axsl:template><axsl:template match="text()" priority="-1" mode="M291"/><axsl:template match="@*|node()" priority="-2" mode="M291"><axsl:apply-templates select="@*|*" mode="M291"/></axsl:template>

<!--PATTERN iosxe-def_usertst-->


	<!--RULE -->
<axsl:template match="iosxe-def:snmpuser_test/iosxe-def:object" priority="1001" mode="M292">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:snmpuser_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmpuser_test must reference an snmpuser_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M292"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:snmpuser_test/iosxe-def:state" priority="1000" mode="M292">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:snmpuser_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmpuser_test must reference an snmpuser_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M292"/></axsl:template><axsl:template match="text()" priority="-1" mode="M292"/><axsl:template match="@*|node()" priority="-2" mode="M292"><axsl:apply-templates select="@*|*" mode="M292"/></axsl:template>

<!--PATTERN iosxe-def_snmpuser_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:snmpuser_object//oval-def:filter" priority="1000" mode="M293"><axsl:variable name="parent_object" select="ancestor::iosxe-def:snmpuser_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='snmpuser_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M293"/></axsl:template><axsl:template match="text()" priority="-1" mode="M293"/><axsl:template match="@*|node()" priority="-2" mode="M293"><axsl:apply-templates select="@*|*" mode="M293"/></axsl:template>

<!--PATTERN iosxe-def_grouptst-->


	<!--RULE -->
<axsl:template match="iosxe-def:snmpgroup_test/iosxe-def:object" priority="1001" mode="M294">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:snmpgroup_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmpgroup_test must reference an snmpgroup_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M294"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:snmpgroup_test/iosxe-def:state" priority="1000" mode="M294">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:snmpgroup_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmpgroup_test must reference an snmpgroup_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M294"/></axsl:template><axsl:template match="text()" priority="-1" mode="M294"/><axsl:template match="@*|node()" priority="-2" mode="M294"><axsl:apply-templates select="@*|*" mode="M294"/></axsl:template>

<!--PATTERN iosxe-def_snmpgroup_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:snmpgroup_object//oval-def:filter" priority="1000" mode="M295"><axsl:variable name="parent_object" select="ancestor::iosxe-def:snmpgroup_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='snmpgroup_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M295"/></axsl:template><axsl:template match="text()" priority="-1" mode="M295"/><axsl:template match="@*|node()" priority="-2" mode="M295"><axsl:apply-templates select="@*|*" mode="M295"/></axsl:template>

<!--PATTERN iosxe-def_viewtst-->


	<!--RULE -->
<axsl:template match="iosxe-def:snmpview_test/iosxe-def:object" priority="1001" mode="M296">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/iosxe-def:snmpview_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an snmpview_test must reference an snmpview_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M296"/></axsl:template>

	<!--RULE -->
<axsl:template match="iosxe-def:snmpview_test/iosxe-def:state" priority="1000" mode="M296">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/iosxe-def:snmpview_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an snmpview_test must reference an snmpview_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M296"/></axsl:template><axsl:template match="text()" priority="-1" mode="M296"/><axsl:template match="@*|node()" priority="-2" mode="M296"><axsl:apply-templates select="@*|*" mode="M296"/></axsl:template>

<!--PATTERN iosxe-def_snmpview_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="iosxe-def:snmpview_object//oval-def:filter" priority="1000" mode="M297"><axsl:variable name="parent_object" select="ancestor::iosxe-def:snmpview_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe') and ($state_name='snmpview_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M297"/></axsl:template><axsl:template match="text()" priority="-1" mode="M297"/><axsl:template match="@*|node()" priority="-2" mode="M297"><axsl:apply-templates select="@*|*" mode="M297"/></axsl:template>

<!--PATTERN iosxe-def_sratst_null_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:states/iosxe-def:routingprotocolauthintf_state/iosxe-def:auth_type" priority="1000" mode="M298">

		<!--REPORT -->
<axsl:if test=".='NULL'">
                                               DEPRECATED ELEMENT VALUE IN: routingprotocolauthintf_state ELEMENT VALUE: <axsl:text/><axsl:value-of select="."/><axsl:text/>
                                         <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M298"/></axsl:template><axsl:template match="text()" priority="-1" mode="M298"/><axsl:template match="@*|node()" priority="-2" mode="M298"><axsl:apply-templates select="@*|*" mode="M298"/></axsl:template>

<!--PATTERN iosxe-def_salut_none_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:states/iosxe-def:acl_state/iosxe-def:use" priority="1000" mode="M299">

		<!--REPORT -->
<axsl:if test=".='NONE'">
                                               DEPRECATED ELEMENT VALUE IN: acl_state ELEMENT VALUE: <axsl:text/><axsl:value-of select="."/><axsl:text/>
                                         <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M299"/></axsl:template><axsl:template match="text()" priority="-1" mode="M299"/><axsl:template match="@*|node()" priority="-2" mode="M299"><axsl:apply-templates select="@*|*" mode="M299"/></axsl:template>

<!--PATTERN junos-def_xmlconfigtst-->


	<!--RULE -->
<axsl:template match="junos-def:xml_config_test/junos-def:object" priority="1001" mode="M300">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/junos-def:xml_config_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a xml_config_test must reference a xml_config_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M300"/></axsl:template>

	<!--RULE -->
<axsl:template match="junos-def:xml_config_test/junos-def:state" priority="1000" mode="M300">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/junos-def:xml_config_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a xml_config_test must reference a xml_config_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M300"/></axsl:template><axsl:template match="text()" priority="-1" mode="M300"/><axsl:template match="@*|node()" priority="-2" mode="M300"><axsl:apply-templates select="@*|*" mode="M300"/></axsl:template>

<!--PATTERN junos-def_xml_config_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="junos-def:xml_config_object//oval-def:filter" priority="1000" mode="M301"><axsl:variable name="parent_object" select="ancestor::junos-def:xml_config_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#junos') and ($state_name='config_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M301"/></axsl:template><axsl:template match="text()" priority="-1" mode="M301"/><axsl:template match="@*|node()" priority="-2" mode="M301"><axsl:apply-templates select="@*|*" mode="M301"/></axsl:template>

<!--PATTERN junos-def_xmlconfigobjxpath-->


	<!--RULE -->
<axsl:template match="junos-def:xml_config_object/junos-def:xpath" priority="1000" mode="M302">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the xpath entity of a xml_config_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M302"/></axsl:template><axsl:template match="text()" priority="-1" mode="M302"/><axsl:template match="@*|node()" priority="-2" mode="M302"><axsl:apply-templates select="@*|*" mode="M302"/></axsl:template>

<!--PATTERN junos-def_show_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="junos-def:show_object//oval-def:filter" priority="1000" mode="M303"><axsl:variable name="parent_object" select="ancestor::junos-def:show_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#junos') and ($state_name='show_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M303"/></axsl:template><axsl:template match="text()" priority="-1" mode="M303"/><axsl:template match="@*|node()" priority="-2" mode="M303"><axsl:apply-templates select="@*|*" mode="M303"/></axsl:template>

<!--PATTERN junos-def_version_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="junos-def:version_object//oval-def:filter" priority="1000" mode="M304"><axsl:variable name="parent_object" select="ancestor::junos-def:version_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#junos') and ($state_name='version_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M304"/></axsl:template><axsl:template match="text()" priority="-1" mode="M304"/><axsl:template match="@*|node()" priority="-2" mode="M304"><axsl:apply-templates select="@*|*" mode="M304"/></axsl:template>

<!--PATTERN junos-def_xml_show_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="junos-def:xml_show_object//oval-def:filter" priority="1000" mode="M305"><axsl:variable name="parent_object" select="ancestor::junos-def:xml_show_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#junos') and ($state_name='xml_show_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M305"/></axsl:template><axsl:template match="text()" priority="-1" mode="M305"/><axsl:template match="@*|node()" priority="-2" mode="M305"><axsl:apply-templates select="@*|*" mode="M305"/></axsl:template>

<!--PATTERN junos-def_xml_showobjxpath-->


	<!--RULE -->
<axsl:template match="junos-def:xml_show_object/junos-def:xpath" priority="1000" mode="M306">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the xpath entity of a xml_show_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M306"/></axsl:template><axsl:template match="text()" priority="-1" mode="M306"/><axsl:template match="@*|node()" priority="-2" mode="M306"><axsl:apply-templates select="@*|*" mode="M306"/></axsl:template>

<!--PATTERN suse-def_apparmorstatus_tst-->


	<!--RULE -->
<axsl:template match="linux-def:apparmorstatus_test/linux-def:object" priority="1001" mode="M307">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:apparmorstatus_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a apparmorstatus_test must reference a apparmorstatus_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M307"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:apparmorstatus_test/linux-def:state" priority="1000" mode="M307">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:apparmorstatus_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a apparmorstatustest must reference a apparmorstatus_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M307"/></axsl:template><axsl:template match="text()" priority="-1" mode="M307"/><axsl:template match="@*|node()" priority="-2" mode="M307"><axsl:apply-templates select="@*|*" mode="M307"/></axsl:template>

<!--PATTERN linux-def_dpkginfo_test-->


	<!--RULE -->
<axsl:template match="linux-def:dpkginfo_test/linux-def:object" priority="1001" mode="M308">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:dpkginfo_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an dpkginfo_test must reference an dpkginfo_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M308"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:dpkginfo_test/linux-def:state" priority="1000" mode="M308">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:dpkginfo_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an dpkginfo_test must reference an dpkginfo_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M308"/></axsl:template><axsl:template match="text()" priority="-1" mode="M308"/><axsl:template match="@*|node()" priority="-2" mode="M308"><axsl:apply-templates select="@*|*" mode="M308"/></axsl:template>

<!--PATTERN linux-def_dpkginfo_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:dpkginfo_object//oval-def:filter" priority="1000" mode="M309"><axsl:variable name="parent_object" select="ancestor::linux-def:dpkginfo_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='dpkginfo_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M309"/></axsl:template><axsl:template match="text()" priority="-1" mode="M309"/><axsl:template match="@*|node()" priority="-2" mode="M309"><axsl:apply-templates select="@*|*" mode="M309"/></axsl:template>

<!--PATTERN linux-def_dpkginfosteevr_id-->


	<!--RULE -->
<axsl:template match="linux-def:dpkginfo_state/linux-def:evr" priority="1000" mode="M310">

		<!--REPORT -->
<axsl:if test="@datatype='evr_string'"><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> Warning: There are differences in the algorithms for how the version strings of Debian and RPM packages are compared. As a result, a new debian_evr_string datatype was added to the OVAL Language and should be used, for this entity, instead of the evr_string datatype.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M310"/></axsl:template><axsl:template match="text()" priority="-1" mode="M310"/><axsl:template match="@*|node()" priority="-2" mode="M310"><axsl:apply-templates select="@*|*" mode="M310"/></axsl:template>

<!--PATTERN linux-def_iflisteners_test-->


	<!--RULE -->
<axsl:template match="linux-def:iflisteners_test/linux-def:object" priority="1001" mode="M311">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:iflisteners_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an iflisteners_test must reference an iflisteners_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M311"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:iflisteners_test/linux-def:state" priority="1000" mode="M311">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:iflisteners_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an iflisteners_test must reference an iflisteners_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M311"/></axsl:template><axsl:template match="text()" priority="-1" mode="M311"/><axsl:template match="@*|node()" priority="-2" mode="M311"><axsl:apply-templates select="@*|*" mode="M311"/></axsl:template>

<!--PATTERN linux-def_iflisteners_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:iflisteners_object//oval-def:filter" priority="1000" mode="M312"><axsl:variable name="parent_object" select="ancestor::linux-def:iflisteners_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='iflisteners_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M312"/></axsl:template><axsl:template match="text()" priority="-1" mode="M312"/><axsl:template match="@*|node()" priority="-2" mode="M312"><axsl:apply-templates select="@*|*" mode="M312"/></axsl:template>

<!--PATTERN linux-def_inetlisteningservers_test-->


	<!--RULE -->
<axsl:template match="linux-def:inetlisteningservers_test/linux-def:object" priority="1001" mode="M313">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:inetlisteningservers_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an inetlisteningservers_test must reference an inetlisteningservers_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M313"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:inetlisteningservers_test/linux-def:state" priority="1000" mode="M313">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:inetlisteningservers_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an inetlisteningservers_test must reference an inetlisteningservers_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M313"/></axsl:template><axsl:template match="text()" priority="-1" mode="M313"/><axsl:template match="@*|node()" priority="-2" mode="M313"><axsl:apply-templates select="@*|*" mode="M313"/></axsl:template>

<!--PATTERN linux-def_inetlisteningservers_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:inetlisteningservers_object//oval-def:filter" priority="1000" mode="M314"><axsl:variable name="parent_object" select="ancestor::linux-def:inetlisteningservers_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='inetlisteningservers_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M314"/></axsl:template><axsl:template match="text()" priority="-1" mode="M314"/><axsl:template match="@*|node()" priority="-2" mode="M314"><axsl:apply-templates select="@*|*" mode="M314"/></axsl:template>

<!--PATTERN linux-def_partitiontst-->


	<!--RULE -->
<axsl:template match="linux-def:partition_test/linux-def:object" priority="1001" mode="M315">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:partition_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a partition_test must reference a partition_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M315"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:partition_test/linux-def:state" priority="1000" mode="M315">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:partition_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a partition_test must reference a partition_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M315"/></axsl:template><axsl:template match="text()" priority="-1" mode="M315"/><axsl:template match="@*|node()" priority="-2" mode="M315"><axsl:apply-templates select="@*|*" mode="M315"/></axsl:template>

<!--PATTERN linux-def_partition_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:partition_object//oval-def:filter" priority="1000" mode="M316"><axsl:variable name="parent_object" select="ancestor::linux-def:partition_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='partition_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M316"/></axsl:template><axsl:template match="text()" priority="-1" mode="M316"/><axsl:template match="@*|node()" priority="-2" mode="M316"><axsl:apply-templates select="@*|*" mode="M316"/></axsl:template>

<!--PATTERN linux-def_rpminfo_test-->


	<!--RULE -->
<axsl:template match="linux-def:rpminfo_test/linux-def:object" priority="1001" mode="M317">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:rpminfo_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an rpminfo_test must reference an rpminfo_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M317"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:rpminfo_test/linux-def:state" priority="1000" mode="M317">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:rpminfo_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an rpminfo_test must reference an rpminfo_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M317"/></axsl:template><axsl:template match="text()" priority="-1" mode="M317"/><axsl:template match="@*|node()" priority="-2" mode="M317"><axsl:apply-templates select="@*|*" mode="M317"/></axsl:template>

<!--PATTERN linux-def_rpminfo_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:rpminfo_object//oval-def:filter" priority="1000" mode="M318"><axsl:variable name="parent_object" select="ancestor::linux-def:rpminfo_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='rpminfo_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M318"/></axsl:template><axsl:template match="text()" priority="-1" mode="M318"/><axsl:template match="@*|node()" priority="-2" mode="M318"><axsl:apply-templates select="@*|*" mode="M318"/></axsl:template>

<!--PATTERN linux-def_rpmverifytst_dep-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverify_test" priority="1000" mode="M319">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M319"/></axsl:template><axsl:template match="text()" priority="-1" mode="M319"/><axsl:template match="@*|node()" priority="-2" mode="M319"><axsl:apply-templates select="@*|*" mode="M319"/></axsl:template>

<!--PATTERN linux-def_rpmverify_test-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverify_test/linux-def:object" priority="1001" mode="M320">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:rpmverify_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an rpmverify_test must reference an rpmverify_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M320"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:rpmverify_test/linux-def:state" priority="1000" mode="M320">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:rpmverify_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an rpmverify_test must reference an rpmverify_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M320"/></axsl:template><axsl:template match="text()" priority="-1" mode="M320"/><axsl:template match="@*|node()" priority="-2" mode="M320"><axsl:apply-templates select="@*|*" mode="M320"/></axsl:template>

<!--PATTERN linux-def_rpmverify_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverify_object//oval-def:filter" priority="1000" mode="M321"><axsl:variable name="parent_object" select="ancestor::linux-def:rpmverify_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='rpmverify_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M321"/></axsl:template><axsl:template match="text()" priority="-1" mode="M321"/><axsl:template match="@*|node()" priority="-2" mode="M321"><axsl:apply-templates select="@*|*" mode="M321"/></axsl:template>

<!--PATTERN linux-def_rpmverifyobj_dep-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverify_object" priority="1000" mode="M322">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M322"/></axsl:template><axsl:template match="text()" priority="-1" mode="M322"/><axsl:template match="@*|node()" priority="-2" mode="M322"><axsl:apply-templates select="@*|*" mode="M322"/></axsl:template>

<!--PATTERN linux-def_rpmverifyste_dep-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverify_state" priority="1000" mode="M323">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M323"/></axsl:template><axsl:template match="text()" priority="-1" mode="M323"/><axsl:template match="@*|node()" priority="-2" mode="M323"><axsl:apply-templates select="@*|*" mode="M323"/></axsl:template>

<!--PATTERN linux-def_rpmverifyfile_test-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverifyfile_test/linux-def:object" priority="1001" mode="M324">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:rpmverifyfile_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an rpmverifyfile_test must reference an rpmverifyfile_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M324"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:rpmverifyfile_test/linux-def:state" priority="1000" mode="M324">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:rpmverifyfile_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an rpmverifyfile_test must reference an rpmverifyfile_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M324"/></axsl:template><axsl:template match="text()" priority="-1" mode="M324"/><axsl:template match="@*|node()" priority="-2" mode="M324"><axsl:apply-templates select="@*|*" mode="M324"/></axsl:template>

<!--PATTERN linux-def_rpmverifyfile_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverifyfile_object//oval-def:filter" priority="1000" mode="M325"><axsl:variable name="parent_object" select="ancestor::linux-def:rpmverifyfile_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='rpmverifyfile_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M325"/></axsl:template><axsl:template match="text()" priority="-1" mode="M325"/><axsl:template match="@*|node()" priority="-2" mode="M325"><axsl:apply-templates select="@*|*" mode="M325"/></axsl:template>

<!--PATTERN linux-def_rpmverifypackage_test-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverifypackage_test/linux-def:object" priority="1001" mode="M326">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:rpmverifypackage_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an rpmverifypackage_test must reference an rpmverifypackage_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M326"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:rpmverifypackage_test/linux-def:state" priority="1000" mode="M326">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:rpmverifypackage_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an rpmverifypackage_test must reference an rpmverifypackage_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M326"/></axsl:template><axsl:template match="text()" priority="-1" mode="M326"/><axsl:template match="@*|node()" priority="-2" mode="M326"><axsl:apply-templates select="@*|*" mode="M326"/></axsl:template>

<!--PATTERN linux-def_rpmverifypackage_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverifypackage_object//oval-def:filter" priority="1000" mode="M327"><axsl:variable name="parent_object" select="ancestor::linux-def:rpmverifypackage_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='rpmverifypackage_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M327"/></axsl:template><axsl:template match="text()" priority="-1" mode="M327"/><axsl:template match="@*|node()" priority="-2" mode="M327"><axsl:apply-templates select="@*|*" mode="M327"/></axsl:template>

<!--PATTERN linux-def_rpmverifypackage_dicp_dep-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverifypackage_state/linux-def:digest_check_passed" priority="1000" mode="M328">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="../@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M328"/></axsl:template><axsl:template match="text()" priority="-1" mode="M328"/><axsl:template match="@*|node()" priority="-2" mode="M328"><axsl:apply-templates select="@*|*" mode="M328"/></axsl:template>

<!--PATTERN linux-def_rpmverifypackage_scp_dep-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverifypackage_state/linux-def:signature_check_passed" priority="1000" mode="M329">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="../@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M329"/></axsl:template><axsl:template match="text()" priority="-1" mode="M329"/><axsl:template match="@*|node()" priority="-2" mode="M329"><axsl:apply-templates select="@*|*" mode="M329"/></axsl:template>

<!--PATTERN linux-def_rpmverifypackage_nodi_beh_dep-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverifypackage_object/linux-def:behaviors/@nodigest" priority="1000" mode="M330">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED BEHAVIOR: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="../../@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M330"/></axsl:template><axsl:template match="text()" priority="-1" mode="M330"/><axsl:template match="@*|node()" priority="-2" mode="M330"><axsl:apply-templates select="@*|*" mode="M330"/></axsl:template>

<!--PATTERN linux-def_rpmverifypackage_nosi_beh_dep-->


	<!--RULE -->
<axsl:template match="linux-def:rpmverifypackage_object/linux-def:behaviors/@nosignature" priority="1000" mode="M331">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED BEHAVIOR: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="../../@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M331"/></axsl:template><axsl:template match="text()" priority="-1" mode="M331"/><axsl:template match="@*|node()" priority="-2" mode="M331"><axsl:apply-templates select="@*|*" mode="M331"/></axsl:template>

<!--PATTERN linux-def_selinuxbooleantst-->


	<!--RULE -->
<axsl:template match="linux-def:selinuxboolean_test/linux-def:object" priority="1001" mode="M332">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:selinuxboolean_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an selinuxboolean_test must reference an selinuxboolean_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M332"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:selinuxboolean_test/linux-def:state" priority="1000" mode="M332">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:selinuxboolean_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an selinuxboolean_test must reference an selinuxboolean_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M332"/></axsl:template><axsl:template match="text()" priority="-1" mode="M332"/><axsl:template match="@*|node()" priority="-2" mode="M332"><axsl:apply-templates select="@*|*" mode="M332"/></axsl:template>

<!--PATTERN linux-def_selinuxboolean_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:selinuxboolean_object//oval-def:filter" priority="1000" mode="M333"><axsl:variable name="parent_object" select="ancestor::linux-def:selinuxboolean_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='selinuxboolean_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M333"/></axsl:template><axsl:template match="text()" priority="-1" mode="M333"/><axsl:template match="@*|node()" priority="-2" mode="M333"><axsl:apply-templates select="@*|*" mode="M333"/></axsl:template>

<!--PATTERN linux-def_selinuxsecuritycontexttst-->


	<!--RULE -->
<axsl:template match="linux-def:selinuxsecuritycontext_test/linux-def:object" priority="1001" mode="M334">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:selinuxsecuritycontext_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an selinuxsecuritycontext_test must reference an selinuxsecuritycontext_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M334"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:selinuxsecuritycontext_test/linux-def:state" priority="1000" mode="M334">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:selinuxsecuritycontext_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an selinuxsecuritycontext_test must reference an selinuxsecuritycontext_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M334"/></axsl:template><axsl:template match="text()" priority="-1" mode="M334"/><axsl:template match="@*|node()" priority="-2" mode="M334"><axsl:apply-templates select="@*|*" mode="M334"/></axsl:template>

<!--PATTERN linux-def_selinuxsecuritycontext_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:selinuxsecuritycontext_object//oval-def:filter" priority="1000" mode="M335"><axsl:variable name="parent_object" select="ancestor::linux-def:selinuxsecuritycontext_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='selinuxsecuritycontext_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M335"/></axsl:template><axsl:template match="text()" priority="-1" mode="M335"/><axsl:template match="@*|node()" priority="-2" mode="M335"><axsl:apply-templates select="@*|*" mode="M335"/></axsl:template>

<!--PATTERN linux-def_selinuxsecuritycontext_objectfilepath-->


	<!--RULE -->
<axsl:template match="linux-def:selinuxsecuritycontext_object/linux-def:filepath" priority="1000" mode="M336">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::linux-def:behaviors[@max_depth or @recurse or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth, recurse, and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M336"/></axsl:template><axsl:template match="text()" priority="-1" mode="M336"/><axsl:template match="@*|node()" priority="-2" mode="M336"><axsl:apply-templates select="@*|*" mode="M336"/></axsl:template>

<!--PATTERN linux-def_selinuxsecuritycontext_objectfilepath2-->


	<!--RULE -->
<axsl:template match="linux-def:selinuxsecuritycontext_object/linux-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M337">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::linux-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M337"/></axsl:template><axsl:template match="text()" priority="-1" mode="M337"/><axsl:template match="@*|node()" priority="-2" mode="M337"><axsl:apply-templates select="@*|*" mode="M337"/></axsl:template>

<!--PATTERN linux-def_selinuxsecuritycontext_objectpath-->


	<!--RULE -->
<axsl:template match="linux-def:selinuxsecuritycontext_object/linux-def:path[not(@operation='equals' or not(@operation))]" priority="1000" mode="M338">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::linux-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::linux-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::linux-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::linux-def:behaviors[@recurse])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M338"/></axsl:template><axsl:template match="text()" priority="-1" mode="M338"/><axsl:template match="@*|node()" priority="-2" mode="M338"><axsl:apply-templates select="@*|*" mode="M338"/></axsl:template>

<!--PATTERN linux-def_selinuxsecuritycontext_objectfilename-->


	<!--RULE -->
<axsl:template match="linux-def:selinuxsecuritycontext_object/linux-def:filename" priority="1000" mode="M339">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or ((@xsi:nil='1' or @xsi:nil='true') and .='') or not(.='') or (.='' and @operation = 'pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M339"/></axsl:template><axsl:template match="text()" priority="-1" mode="M339"/><axsl:template match="@*|node()" priority="-2" mode="M339"><axsl:apply-templates select="@*|*" mode="M339"/></axsl:template>

<!--PATTERN linux-def_slackwarepkginfo_test-->


	<!--RULE -->
<axsl:template match="linux-def:slackwarepkginfo_test/linux-def:object" priority="1001" mode="M340">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:slackwarepkginfo_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an slackwarepkginfo_test must reference an slackwarepkginfo_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M340"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:slackwarepkginfo_test/linux-def:state" priority="1000" mode="M340">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:slackwarepkginfo_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an slackwarepkginfo_test must reference an slackwarepkginfo_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M340"/></axsl:template><axsl:template match="text()" priority="-1" mode="M340"/><axsl:template match="@*|node()" priority="-2" mode="M340"><axsl:apply-templates select="@*|*" mode="M340"/></axsl:template>

<!--PATTERN linux-def_slackwarepkginfo_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:slackwarepkginfo_object//oval-def:filter" priority="1000" mode="M341"><axsl:variable name="parent_object" select="ancestor::linux-def:slackwarepkginfo_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='slackwarepkginfo_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M341"/></axsl:template><axsl:template match="text()" priority="-1" mode="M341"/><axsl:template match="@*|node()" priority="-2" mode="M341"><axsl:apply-templates select="@*|*" mode="M341"/></axsl:template>

<!--PATTERN linux-def_systemdunitdependencytst-->


	<!--RULE -->
<axsl:template match="linux-def:systemdunitdependency_test/linux-def:object" priority="1001" mode="M342">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:systemdunitdependency_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a systemdunitdependency_test must reference a systemdunitdependency_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M342"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:systemdunitdependency_test/linux-def:state" priority="1000" mode="M342">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:systemdunitdependency_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a systemdunitdependency_test must reference a systemdunitdependency_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M342"/></axsl:template><axsl:template match="text()" priority="-1" mode="M342"/><axsl:template match="@*|node()" priority="-2" mode="M342"><axsl:apply-templates select="@*|*" mode="M342"/></axsl:template>

<!--PATTERN linux-def_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:systemdunitdependency_object//oval-def:filter" priority="1000" mode="M343"><axsl:variable name="parent_object" select="ancestor::linux-def:systemdunitdependency_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='systemdunitdependency_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M343"/></axsl:template><axsl:template match="text()" priority="-1" mode="M343"/><axsl:template match="@*|node()" priority="-2" mode="M343"><axsl:apply-templates select="@*|*" mode="M343"/></axsl:template>

<!--PATTERN linux-def_systemdunitpropertytst-->


	<!--RULE -->
<axsl:template match="linux-def:systemdunitproperty_test/linux-def:object" priority="1001" mode="M344">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:systemdunitproperty_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a systemdunitproperty_test must reference a systemdunitproperty_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M344"/></axsl:template>

	<!--RULE -->
<axsl:template match="linux-def:systemdunitproperty_test/linux-def:state" priority="1000" mode="M344">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:systemdunitproperty_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a systemdunitproperty_test must reference a systemdunitproperty_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M344"/></axsl:template><axsl:template match="text()" priority="-1" mode="M344"/><axsl:template match="@*|node()" priority="-2" mode="M344"><axsl:apply-templates select="@*|*" mode="M344"/></axsl:template>

<!--PATTERN linux-def_systemdunitproperty_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="linux-def:systemdunitproperty_object//oval-def:filter" priority="1000" mode="M345"><axsl:variable name="parent_object" select="ancestor::linux-def:systemdunitproperty_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#linux') and ($state_name='systemdunitproperty_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M345"/></axsl:template><axsl:template match="text()" priority="-1" mode="M345"/><axsl:template match="@*|node()" priority="-2" mode="M345"><axsl:apply-templates select="@*|*" mode="M345"/></axsl:template>

<!--PATTERN macos-def_accountinfo_test-->


	<!--RULE -->
<axsl:template match="macos-def:accountinfo_test/macos-def:object" priority="1001" mode="M346">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:accountinfo_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an accountinfo_test must reference an accountinfo_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M346"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:accountinfo_test/macos-def:state" priority="1000" mode="M346">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:accountinfo_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an accountinfo_test must reference an accountinfo_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M346"/></axsl:template><axsl:template match="text()" priority="-1" mode="M346"/><axsl:template match="@*|node()" priority="-2" mode="M346"><axsl:apply-templates select="@*|*" mode="M346"/></axsl:template>

<!--PATTERN macos-def_accountinfo_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:accountinfo_object//oval-def:filter" priority="1000" mode="M347"><axsl:variable name="parent_object" select="ancestor::macos-def:accountinfo_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='accountinfo_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M347"/></axsl:template><axsl:template match="text()" priority="-1" mode="M347"/><axsl:template match="@*|node()" priority="-2" mode="M347"><axsl:apply-templates select="@*|*" mode="M347"/></axsl:template>

<!--PATTERN macos-def_authorizationdbtst-->


	<!--RULE -->
<axsl:template match="macos-def:authorizationdb_test/macos-def:object" priority="1001" mode="M348">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:authorizationdb_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a authorizationdb_test must reference an authorizationdb_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M348"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:authorizationdb_test/macos-def:state" priority="1000" mode="M348">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:authorizationdb_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a authorizationdb_test must reference an authorizationdb_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M348"/></axsl:template><axsl:template match="text()" priority="-1" mode="M348"/><axsl:template match="@*|node()" priority="-2" mode="M348"><axsl:apply-templates select="@*|*" mode="M348"/></axsl:template>

<!--PATTERN macos-def_authorizationdb_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:authorizationdb_object//oval-def:filter" priority="1000" mode="M349"><axsl:variable name="parent_object" select="ancestor::macos-def:authorizationdb_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='authorizationdb_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M349"/></axsl:template><axsl:template match="text()" priority="-1" mode="M349"/><axsl:template match="@*|node()" priority="-2" mode="M349"><axsl:apply-templates select="@*|*" mode="M349"/></axsl:template>

<!--PATTERN macos-def_authdbobjxpath-->


	<!--RULE -->
<axsl:template match="macos-def:authorizationdb_object/macos-def:xpath" priority="1000" mode="M350">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the xpath entity of an authorizationdb_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M350"/></axsl:template><axsl:template match="text()" priority="-1" mode="M350"/><axsl:template match="@*|node()" priority="-2" mode="M350"><axsl:apply-templates select="@*|*" mode="M350"/></axsl:template>

<!--PATTERN macos-def_corestoragetst-->


	<!--RULE -->
<axsl:template match="macos-def:corestorage_test/macos-def:object" priority="1001" mode="M351">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:corestorage_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a corestorage_test must reference an corestorage_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M351"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:corestorage_test/macos-def:state" priority="1000" mode="M351">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:corestorage_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a corestorage_test must reference an corestorage_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M351"/></axsl:template><axsl:template match="text()" priority="-1" mode="M351"/><axsl:template match="@*|node()" priority="-2" mode="M351"><axsl:apply-templates select="@*|*" mode="M351"/></axsl:template>

<!--PATTERN macos-def_corestorage_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:corestorage_object//oval-def:filter" priority="1000" mode="M352"><axsl:variable name="parent_object" select="ancestor::macos-def:corestorage_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='corestorage_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M352"/></axsl:template><axsl:template match="text()" priority="-1" mode="M352"/><axsl:template match="@*|node()" priority="-2" mode="M352"><axsl:apply-templates select="@*|*" mode="M352"/></axsl:template>

<!--PATTERN macos-def_corestorageobjxpath-->


	<!--RULE -->
<axsl:template match="macos-def:corestorage_object/macos-def:xpath" priority="1000" mode="M353">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the xpath entity of an corestorage_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M353"/></axsl:template><axsl:template match="text()" priority="-1" mode="M353"/><axsl:template match="@*|node()" priority="-2" mode="M353"><axsl:apply-templates select="@*|*" mode="M353"/></axsl:template>

<!--PATTERN macos-def_diskutiltst-->


	<!--RULE -->
<axsl:template match="macos-def:diskutil_test/macos-def:object" priority="1001" mode="M354">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:diskutil_object/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a diskutil_test must reference a diskutil_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M354"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:diskutil_test/macos-def:state" priority="1000" mode="M354">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:diskutil_state/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a diskutil_test must reference a diskutil_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M354"/></axsl:template><axsl:template match="text()" priority="-1" mode="M354"/><axsl:template match="@*|node()" priority="-2" mode="M354"><axsl:apply-templates select="@*|*" mode="M354"/></axsl:template>

<!--PATTERN macos-def_diskutil_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:diskutil_object//oval-def:filter" priority="1000" mode="M355"><axsl:variable name="parent_object" select="ancestor::macos-def:diskutil_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='diskutil_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M355"/></axsl:template><axsl:template match="text()" priority="-1" mode="M355"/><axsl:template match="@*|node()" priority="-2" mode="M355"><axsl:apply-templates select="@*|*" mode="M355"/></axsl:template>

<!--PATTERN macos-def_gatekeepertst-->


	<!--RULE -->
<axsl:template match="macos-def:gatekeeper_test/macos-def:object" priority="1001" mode="M356">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:gatekeeper_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a gatekeeper_test must reference an gatekeeper_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M356"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:gatekeeper_test/macos-def:state" priority="1000" mode="M356">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:gatekeeper_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a gatekeeper_test must reference an gatekeeper_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M356"/></axsl:template><axsl:template match="text()" priority="-1" mode="M356"/><axsl:template match="@*|node()" priority="-2" mode="M356"><axsl:apply-templates select="@*|*" mode="M356"/></axsl:template>

<!--PATTERN macos-def_inetlisteningserverstst_dep-->


	<!--RULE -->
<axsl:template match="macos-def:inetlisteningservers_test" priority="1000" mode="M357">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M357"/></axsl:template><axsl:template match="text()" priority="-1" mode="M357"/><axsl:template match="@*|node()" priority="-2" mode="M357"><axsl:apply-templates select="@*|*" mode="M357"/></axsl:template>

<!--PATTERN macos-def_inetlisteningservers_test-->


	<!--RULE -->
<axsl:template match="macos-def:inetlisteningservers_test/macos-def:object" priority="1001" mode="M358">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:inetlisteningservers_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an inetlisteningservers_test must reference an inetlisteningservers_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M358"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:inetlisteningservers_test/macos-def:state" priority="1000" mode="M358">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:inetlisteningservers_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an inetlisteningservers_test must reference an inetlisteningservers_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M358"/></axsl:template><axsl:template match="text()" priority="-1" mode="M358"/><axsl:template match="@*|node()" priority="-2" mode="M358"><axsl:apply-templates select="@*|*" mode="M358"/></axsl:template>

<!--PATTERN macos-def_inetlisteningserversobj_dep-->


	<!--RULE -->
<axsl:template match="macos-def:inetlisteningservers_object" priority="1000" mode="M359">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M359"/></axsl:template><axsl:template match="text()" priority="-1" mode="M359"/><axsl:template match="@*|node()" priority="-2" mode="M359"><axsl:apply-templates select="@*|*" mode="M359"/></axsl:template>

<!--PATTERN macos-def_inetlisteningservers_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:inetlisteningservers_object//oval-def:filter" priority="1000" mode="M360"><axsl:variable name="parent_object" select="ancestor::macos-def:inetlisteningservers_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='inetlisteningservers_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M360"/></axsl:template><axsl:template match="text()" priority="-1" mode="M360"/><axsl:template match="@*|node()" priority="-2" mode="M360"><axsl:apply-templates select="@*|*" mode="M360"/></axsl:template>

<!--PATTERN macos-def_inetlisteningserversste_dep-->


	<!--RULE -->
<axsl:template match="macos-def:inetlisteningservers_state" priority="1000" mode="M361">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M361"/></axsl:template><axsl:template match="text()" priority="-1" mode="M361"/><axsl:template match="@*|node()" priority="-2" mode="M361"><axsl:apply-templates select="@*|*" mode="M361"/></axsl:template>

<!--PATTERN macos-def_inetlisteningserver510_test-->


	<!--RULE -->
<axsl:template match="macos-def:inetlisteningserver510_test/macos-def:object" priority="1001" mode="M362">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:inetlisteningserver510_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an inetlisteningserver510_test must reference an inetlisteningserver510_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M362"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:inetlisteningserver510_test/macos-def:state" priority="1000" mode="M362">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:inetlisteningserver510_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an inetlisteningserver510_test must reference an inetlisteningserver510_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M362"/></axsl:template><axsl:template match="text()" priority="-1" mode="M362"/><axsl:template match="@*|node()" priority="-2" mode="M362"><axsl:apply-templates select="@*|*" mode="M362"/></axsl:template>

<!--PATTERN macos-def_inetlisteningserver510_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:inetlisteningserver510_object//oval-def:filter" priority="1000" mode="M363"><axsl:variable name="parent_object" select="ancestor::macos-def:inetlisteningserver510_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='inetlisteningserver510_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M363"/></axsl:template><axsl:template match="text()" priority="-1" mode="M363"/><axsl:template match="@*|node()" priority="-2" mode="M363"><axsl:apply-templates select="@*|*" mode="M363"/></axsl:template>

<!--PATTERN macos-def_keychaintst-->


	<!--RULE -->
<axsl:template match="macos-def:keychain_test/macos-def:object" priority="1001" mode="M364">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:keychain_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a keychain_test must reference an keychain_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M364"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:keychain_test/macos-def:state" priority="1000" mode="M364">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:keychain_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a keychain_test must reference an keychain_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M364"/></axsl:template><axsl:template match="text()" priority="-1" mode="M364"/><axsl:template match="@*|node()" priority="-2" mode="M364"><axsl:apply-templates select="@*|*" mode="M364"/></axsl:template>

<!--PATTERN macos-def_keychain_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:keychain_object//oval-def:filter" priority="1000" mode="M365"><axsl:variable name="parent_object" select="ancestor::macos-def:keychain_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='keychain_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M365"/></axsl:template><axsl:template match="text()" priority="-1" mode="M365"/><axsl:template match="@*|node()" priority="-2" mode="M365"><axsl:apply-templates select="@*|*" mode="M365"/></axsl:template>

<!--PATTERN macos-def_launchdtst-->


	<!--RULE -->
<axsl:template match="macos-def:launchd_test/macos-def:object" priority="1001" mode="M366">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:launchd_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a launchd_test must reference an launchd_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M366"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:launchd_test/macos-def:state" priority="1000" mode="M366">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:launchd_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a launchd_test must reference an launchd_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M366"/></axsl:template><axsl:template match="text()" priority="-1" mode="M366"/><axsl:template match="@*|node()" priority="-2" mode="M366"><axsl:apply-templates select="@*|*" mode="M366"/></axsl:template>

<!--PATTERN macos-def_launchd_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:macos_object//oval-def:filter" priority="1000" mode="M367"><axsl:variable name="parent_object" select="ancestor::macos-def:launchd_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='launchd_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M367"/></axsl:template><axsl:template match="text()" priority="-1" mode="M367"/><axsl:template match="@*|node()" priority="-2" mode="M367"><axsl:apply-templates select="@*|*" mode="M367"/></axsl:template>

<!--PATTERN macos-def_nvram_test-->


	<!--RULE -->
<axsl:template match="macos-def:nvram_test/macos-def:object" priority="1001" mode="M368">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:nvram_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an nvram_test must reference an nvram_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M368"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:nvram_test/macos-def:state" priority="1000" mode="M368">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:nvram_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an nvram_test must reference an nvram_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M368"/></axsl:template><axsl:template match="text()" priority="-1" mode="M368"/><axsl:template match="@*|node()" priority="-2" mode="M368"><axsl:apply-templates select="@*|*" mode="M368"/></axsl:template>

<!--PATTERN macos-def_nvram_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:nvram_object//oval-def:filter" priority="1000" mode="M369"><axsl:variable name="parent_object" select="ancestor::macos-def:nvram_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='nvram_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M369"/></axsl:template><axsl:template match="text()" priority="-1" mode="M369"/><axsl:template match="@*|node()" priority="-2" mode="M369"><axsl:apply-templates select="@*|*" mode="M369"/></axsl:template>

<!--PATTERN macos-def_plist_test_dep-->


	<!--RULE -->
<axsl:template match="macos-def:plist_test" priority="1000" mode="M370">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M370"/></axsl:template><axsl:template match="text()" priority="-1" mode="M370"/><axsl:template match="@*|node()" priority="-2" mode="M370"><axsl:apply-templates select="@*|*" mode="M370"/></axsl:template>

<!--PATTERN macos-def_plist_test-->


	<!--RULE -->
<axsl:template match="macos-def:plist_test/macos-def:object" priority="1001" mode="M371">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:plist_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a plist_test must reference a plist_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M371"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:plist_test/macos-def:state" priority="1000" mode="M371">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:plist_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a plist_test must reference a plist_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M371"/></axsl:template><axsl:template match="text()" priority="-1" mode="M371"/><axsl:template match="@*|node()" priority="-2" mode="M371"><axsl:apply-templates select="@*|*" mode="M371"/></axsl:template>

<!--PATTERN macos-def_plist_object_dep-->


	<!--RULE -->
<axsl:template match="macos-def:plist_object" priority="1000" mode="M372">

		<!--REPORT -->
<axsl:if test="true()"> DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/>
                                    <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M372"/></axsl:template><axsl:template match="text()" priority="-1" mode="M372"/><axsl:template match="@*|node()" priority="-2" mode="M372"><axsl:apply-templates select="@*|*" mode="M372"/></axsl:template>

<!--PATTERN macos-def_plist_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:plist_object//oval-def:filter" priority="1000" mode="M373"><axsl:variable name="parent_object" select="ancestor::macos-def:plist_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='plist_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M373"/></axsl:template><axsl:template match="text()" priority="-1" mode="M373"/><axsl:template match="@*|node()" priority="-2" mode="M373"><axsl:apply-templates select="@*|*" mode="M373"/></axsl:template>

<!--PATTERN macos-def_plistobjfilepath-->


	<!--RULE -->
<axsl:template match="macos-def:plist_object/macos-def:filepath" priority="1000" mode="M374">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise>
                                                                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the filepath entity of a plist_object should be 'equals' <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M374"/></axsl:template><axsl:template match="text()" priority="-1" mode="M374"/><axsl:template match="@*|node()" priority="-2" mode="M374"><axsl:apply-templates select="@*|*" mode="M374"/></axsl:template>

<!--PATTERN macos-def_plist_state_dep-->


	<!--RULE -->
<axsl:template match="macos-def:plist_state" priority="1000" mode="M375">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M375"/></axsl:template><axsl:template match="text()" priority="-1" mode="M375"/><axsl:template match="@*|node()" priority="-2" mode="M375"><axsl:apply-templates select="@*|*" mode="M375"/></axsl:template>

<!--PATTERN macos-def_plist510_test_dep-->


	<!--RULE -->
<axsl:template match="macos-def:plist510_test" priority="1000" mode="M376">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M376"/></axsl:template><axsl:template match="text()" priority="-1" mode="M376"/><axsl:template match="@*|node()" priority="-2" mode="M376"><axsl:apply-templates select="@*|*" mode="M376"/></axsl:template>

<!--PATTERN macos-def_plist510_test-->


	<!--RULE -->
<axsl:template match="macos-def:plist510_test/macos-def:object" priority="1001" mode="M377">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:plist510_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a plist510_test must reference a plist510_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M377"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:plist510_test/macos-def:state" priority="1000" mode="M377">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:plist510_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a plist510_test must reference a plist510_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M377"/></axsl:template><axsl:template match="text()" priority="-1" mode="M377"/><axsl:template match="@*|node()" priority="-2" mode="M377"><axsl:apply-templates select="@*|*" mode="M377"/></axsl:template>

<!--PATTERN macos-def_plist510_object_dep-->


	<!--RULE -->
<axsl:template match="macos-def:plist510_object" priority="1000" mode="M378">

		<!--REPORT -->
<axsl:if test="true()"> DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/>
                                    <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M378"/></axsl:template><axsl:template match="text()" priority="-1" mode="M378"/><axsl:template match="@*|node()" priority="-2" mode="M378"><axsl:apply-templates select="@*|*" mode="M378"/></axsl:template>

<!--PATTERN macos-def_plist510_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:plist510_object//oval-def:filter" priority="1000" mode="M379"><axsl:variable name="parent_object" select="ancestor::macos-def:plist510_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='plist510_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M379"/></axsl:template><axsl:template match="text()" priority="-1" mode="M379"/><axsl:template match="@*|node()" priority="-2" mode="M379"><axsl:apply-templates select="@*|*" mode="M379"/></axsl:template>

<!--PATTERN macos-def_plist510objappid-->


	<!--RULE -->
<axsl:template match="macos-def:plist510_object/macos-def:app_id" priority="1000" mode="M380">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(../macos-def:key/@xsi:nil='true' or ../macos-def:key/@xsi:nil='1')"/><axsl:otherwise>
                                                                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - key entity must not be nil when the app_id entity is used because preferences require a key. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M380"/></axsl:template><axsl:template match="text()" priority="-1" mode="M380"/><axsl:template match="@*|node()" priority="-2" mode="M380"><axsl:apply-templates select="@*|*" mode="M380"/></axsl:template>

<!--PATTERN macos-def_plist510objfilepath-->


	<!--RULE -->
<axsl:template match="macos-def:plist510_object/macos-def:filepath" priority="1000" mode="M381">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise>
                                                                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the filepath entity of a plist510_object should be 'equals' <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M381"/></axsl:template><axsl:template match="text()" priority="-1" mode="M381"/><axsl:template match="@*|node()" priority="-2" mode="M381"><axsl:apply-templates select="@*|*" mode="M381"/></axsl:template>

<!--PATTERN macos-def_plist510_state_dep-->


	<!--RULE -->
<axsl:template match="macos-def:plist510_state" priority="1000" mode="M382">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M382"/></axsl:template><axsl:template match="text()" priority="-1" mode="M382"/><axsl:template match="@*|node()" priority="-2" mode="M382"><axsl:apply-templates select="@*|*" mode="M382"/></axsl:template>

<!--PATTERN macos-def_plist511_test-->


	<!--RULE -->
<axsl:template match="macos-def:plist511_test/macos-def:object" priority="1001" mode="M383">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:plist511_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a plist511_test must reference a plist511_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M383"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:plist511_test/macos-def:state" priority="1000" mode="M383">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:plist511_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a plist511_test must reference a plist511_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M383"/></axsl:template><axsl:template match="text()" priority="-1" mode="M383"/><axsl:template match="@*|node()" priority="-2" mode="M383"><axsl:apply-templates select="@*|*" mode="M383"/></axsl:template>

<!--PATTERN macos-def_plist511_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:plist511_object//oval-def:filter" priority="1000" mode="M384"><axsl:variable name="parent_object" select="ancestor::macos-def:plist511_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='plist511_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M384"/></axsl:template><axsl:template match="text()" priority="-1" mode="M384"/><axsl:template match="@*|node()" priority="-2" mode="M384"><axsl:apply-templates select="@*|*" mode="M384"/></axsl:template>

<!--PATTERN macos-def_plist511objfilepath-->


	<!--RULE -->
<axsl:template match="macos-def:plist511_object/macos-def:filepath" priority="1000" mode="M385">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise>
                                                                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the filepath entity of a plist511_object should be 'equals'
                                                                                    <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M385"/></axsl:template><axsl:template match="text()" priority="-1" mode="M385"/><axsl:template match="@*|node()" priority="-2" mode="M385"><axsl:apply-templates select="@*|*" mode="M385"/></axsl:template>

<!--PATTERN macos-def_plist511objxpath-->


	<!--RULE -->
<axsl:template match="macos-def:plist_object/macos-def:xpath" priority="1000" mode="M386">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the xpath entity of a plist_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M386"/></axsl:template><axsl:template match="text()" priority="-1" mode="M386"/><axsl:template match="@*|node()" priority="-2" mode="M386"><axsl:apply-templates select="@*|*" mode="M386"/></axsl:template>

<!--PATTERN macos-def_pwpolicy_test_dep-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy_test" priority="1000" mode="M387">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M387"/></axsl:template><axsl:template match="text()" priority="-1" mode="M387"/><axsl:template match="@*|node()" priority="-2" mode="M387"><axsl:apply-templates select="@*|*" mode="M387"/></axsl:template>

<!--PATTERN macos-def_pwpolicy_test-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy_test/macos-def:object" priority="1001" mode="M388">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:pwpolicy_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an pwpolicy_test must reference an pwpolicy_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M388"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:pwpolicy_test/macos-def:state" priority="1000" mode="M388">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:pwpolicy_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an pwpolicy_test must reference an pwpolicy_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M388"/></axsl:template><axsl:template match="text()" priority="-1" mode="M388"/><axsl:template match="@*|node()" priority="-2" mode="M388"><axsl:apply-templates select="@*|*" mode="M388"/></axsl:template>

<!--PATTERN macos-def_pwpolicy_object_dep-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy_object" priority="1000" mode="M389">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M389"/></axsl:template><axsl:template match="text()" priority="-1" mode="M389"/><axsl:template match="@*|node()" priority="-2" mode="M389"><axsl:apply-templates select="@*|*" mode="M389"/></axsl:template>

<!--PATTERN macos-def_pwpolicy_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy_object//oval-def:filter" priority="1000" mode="M390"><axsl:variable name="parent_object" select="ancestor::macos-def:pwpolicy_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='pwpolicy_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M390"/></axsl:template><axsl:template match="text()" priority="-1" mode="M390"/><axsl:template match="@*|node()" priority="-2" mode="M390"><axsl:apply-templates select="@*|*" mode="M390"/></axsl:template>

<!--PATTERN macos-def_pwpobjusername-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy_object/macos-def:username" priority="1000" mode="M391">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the username entity of a pwpolicy_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M391"/></axsl:template><axsl:template match="text()" priority="-1" mode="M391"/><axsl:template match="@*|node()" priority="-2" mode="M391"><axsl:apply-templates select="@*|*" mode="M391"/></axsl:template>

<!--PATTERN macos-def_pwpobjuserpass-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy_object/macos-def:userpass" priority="1000" mode="M392">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the userpass entity of a pwpolicy_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M392"/></axsl:template><axsl:template match="text()" priority="-1" mode="M392"/><axsl:template match="@*|node()" priority="-2" mode="M392"><axsl:apply-templates select="@*|*" mode="M392"/></axsl:template>

<!--PATTERN macos-def_pwpobjdirnode-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy_object/macos-def:directory_node" priority="1000" mode="M393">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the directory_node entity of a pwpolicy_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M393"/></axsl:template><axsl:template match="text()" priority="-1" mode="M393"/><axsl:template match="@*|node()" priority="-2" mode="M393"><axsl:apply-templates select="@*|*" mode="M393"/></axsl:template>

<!--PATTERN macos-def_pwpolicy_state_dep-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy_state" priority="1000" mode="M394">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M394"/></axsl:template><axsl:template match="text()" priority="-1" mode="M394"/><axsl:template match="@*|node()" priority="-2" mode="M394"><axsl:apply-templates select="@*|*" mode="M394"/></axsl:template>

<!--PATTERN macos-def_pwpolicy59_test-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy59_test/macos-def:object" priority="1001" mode="M395">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:pwpolicy59_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an pwpolicy59_test must reference an pwpolicy59_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M395"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:pwpolicy59_test/macos-def:state" priority="1000" mode="M395">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:pwpolicy59_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an pwpolicy59_test must reference an pwpolicy59_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M395"/></axsl:template><axsl:template match="text()" priority="-1" mode="M395"/><axsl:template match="@*|node()" priority="-2" mode="M395"><axsl:apply-templates select="@*|*" mode="M395"/></axsl:template>

<!--PATTERN macos-def_pwpolicy59_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy59_object//oval-def:filter" priority="1000" mode="M396"><axsl:variable name="parent_object" select="ancestor::macos-def:pwpolicy59_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='pwpolicy59_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M396"/></axsl:template><axsl:template match="text()" priority="-1" mode="M396"/><axsl:template match="@*|node()" priority="-2" mode="M396"><axsl:apply-templates select="@*|*" mode="M396"/></axsl:template>

<!--PATTERN macos-def_pwp59objusername-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy59_object/macos-def:username" priority="1000" mode="M397">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not((@xsi:nil='1' or @xsi:nil='true')) or ../macos-def:userpass/@xsi:nil='true' or ../macos-def:userpass/@xsi:nil='1'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - userpass entity must be nil when username entity is nil<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M397"/></axsl:template><axsl:template match="text()" priority="-1" mode="M397"/><axsl:template match="@*|node()" priority="-2" mode="M397"><axsl:apply-templates select="@*|*" mode="M397"/></axsl:template>

<!--PATTERN macos-def_pwp59objuserpass-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy59_object/macos-def:userpass" priority="1000" mode="M398">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the userpass entity of a pwpolicy59_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not((@xsi:nil='1' or @xsi:nil='true')) or ../macos-def:username/@xsi:nil='true' or ../macos-def:username/@xsi:nil='1'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - username entity must be nil when userpass entity is nil<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M398"/></axsl:template><axsl:template match="text()" priority="-1" mode="M398"/><axsl:template match="@*|node()" priority="-2" mode="M398"><axsl:apply-templates select="@*|*" mode="M398"/></axsl:template>

<!--PATTERN macos-def_pwp59dirnode-->


	<!--RULE -->
<axsl:template match="macos-def:pwpolicy59_object/macos-def:directory_node" priority="1000" mode="M399">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the directory_node entity of a pwpolicy59_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M399"/></axsl:template><axsl:template match="text()" priority="-1" mode="M399"/><axsl:template match="@*|node()" priority="-2" mode="M399"><axsl:apply-templates select="@*|*" mode="M399"/></axsl:template>

<!--PATTERN macos-def_rlimittst-->


	<!--RULE -->
<axsl:template match="macos-def:rlimit_test/macos-def:object" priority="1001" mode="M400">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:rlimit_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a rlimit_test must reference an rlimit_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M400"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:rlimit_test/macos-def:state" priority="1000" mode="M400">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:rlimit_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a rlimit_test must reference an rlimit_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M400"/></axsl:template><axsl:template match="text()" priority="-1" mode="M400"/><axsl:template match="@*|node()" priority="-2" mode="M400"><axsl:apply-templates select="@*|*" mode="M400"/></axsl:template>

<!--PATTERN macos-def_softwareupdatetst-->


	<!--RULE -->
<axsl:template match="macos-def:softwareupdate_test/macos-def:object" priority="1001" mode="M401">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:softwareupdate_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a softwareupdate_test must reference an softwareupdate_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M401"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:softwareupdate_test/macos-def:state" priority="1000" mode="M401">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:softwareupdate_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a softwareupdate_test must reference an softwareupdate_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M401"/></axsl:template><axsl:template match="text()" priority="-1" mode="M401"/><axsl:template match="@*|node()" priority="-2" mode="M401"><axsl:apply-templates select="@*|*" mode="M401"/></axsl:template>

<!--PATTERN macos-def_systemprofilertst-->


	<!--RULE -->
<axsl:template match="macos-def:systemprofiler_test/macos-def:object" priority="1001" mode="M402">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:systemprofiler_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a systemprofiler_test must reference an systemprofiler_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M402"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:systemprofiler_test/macos-def:state" priority="1000" mode="M402">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:systemprofiler_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a systemprofiler_test must reference an systemprofiler_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M402"/></axsl:template><axsl:template match="text()" priority="-1" mode="M402"/><axsl:template match="@*|node()" priority="-2" mode="M402"><axsl:apply-templates select="@*|*" mode="M402"/></axsl:template>

<!--PATTERN macos-def_systemprofiler_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="macos-def:systemprofiler_object//oval-def:filter" priority="1000" mode="M403"><axsl:variable name="parent_object" select="ancestor::macos-def:systemprofiler_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#macos') and ($state_name='systemprofiler_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M403"/></axsl:template><axsl:template match="text()" priority="-1" mode="M403"/><axsl:template match="@*|node()" priority="-2" mode="M403"><axsl:apply-templates select="@*|*" mode="M403"/></axsl:template>

<!--PATTERN macos-def_systemprofilerobjxpath-->


	<!--RULE -->
<axsl:template match="macos-def:systemprofiler_object/macos-def:xpath" priority="1000" mode="M404">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the xpath entity of an systemprofiler_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M404"/></axsl:template><axsl:template match="text()" priority="-1" mode="M404"/><axsl:template match="@*|node()" priority="-2" mode="M404"><axsl:apply-templates select="@*|*" mode="M404"/></axsl:template>

<!--PATTERN macos-def_systemsetuptst-->


	<!--RULE -->
<axsl:template match="macos-def:systemsetup_test/macos-def:object" priority="1001" mode="M405">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:systemsetup_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a systemsetup_test must reference an systemsetup_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M405"/></axsl:template>

	<!--RULE -->
<axsl:template match="macos-def:systemsetup_test/macos-def:state" priority="1000" mode="M405">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:systemsetup_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a systemsetup_test must reference an systemsetup_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M405"/></axsl:template><axsl:template match="text()" priority="-1" mode="M405"/><axsl:template match="@*|node()" priority="-2" mode="M405"><axsl:apply-templates select="@*|*" mode="M405"/></axsl:template>

<!--PATTERN netconf-def_configtst-->


	<!--RULE -->
<axsl:template match="netconf-def:config_test/netconf-def:object" priority="1001" mode="M406">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/netconf-def:config_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a config_test must reference a config_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M406"/></axsl:template>

	<!--RULE -->
<axsl:template match="netconf-def:config_test/netconf-def:state" priority="1000" mode="M406">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/netconf-def:config_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a config_test must reference a config_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M406"/></axsl:template><axsl:template match="text()" priority="-1" mode="M406"/><axsl:template match="@*|node()" priority="-2" mode="M406"><axsl:apply-templates select="@*|*" mode="M406"/></axsl:template>

<!--PATTERN netconf-def_netconf_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="netconf-def:netconf_object//oval-def:filter" priority="1000" mode="M407"><axsl:variable name="parent_object" select="ancestor::netconf-def:config_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#netconf') and ($state_name='config_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M407"/></axsl:template><axsl:template match="text()" priority="-1" mode="M407"/><axsl:template match="@*|node()" priority="-2" mode="M407"><axsl:apply-templates select="@*|*" mode="M407"/></axsl:template>

<!--PATTERN netconf-def_xmlobjxpath-->


	<!--RULE -->
<axsl:template match="netconf-def:config_object/netconf-def:xpath" priority="1000" mode="M408">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the xpath entity of a config_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M408"/></axsl:template><axsl:template match="text()" priority="-1" mode="M408"/><axsl:template match="@*|node()" priority="-2" mode="M408"><axsl:apply-templates select="@*|*" mode="M408"/></axsl:template>

<!--PATTERN pixos-def_linetst-->


	<!--RULE -->
<axsl:template match="pixos-def:line_test/pixos-def:object" priority="1001" mode="M409">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/pixos-def:line_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a line_test must reference a line_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M409"/></axsl:template>

	<!--RULE -->
<axsl:template match="pixos-def:line_test/pixos-def:state" priority="1000" mode="M409">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/pixos-def:line_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a line_test must reference a line_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M409"/></axsl:template><axsl:template match="text()" priority="-1" mode="M409"/><axsl:template match="@*|node()" priority="-2" mode="M409"><axsl:apply-templates select="@*|*" mode="M409"/></axsl:template>

<!--PATTERN pixos-def_line_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="pixos-def:line_object//oval-def:filter" priority="1000" mode="M410"><axsl:variable name="parent_object" select="ancestor::pixos-def:line_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos') and ($state_name='line_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M410"/></axsl:template><axsl:template match="text()" priority="-1" mode="M410"/><axsl:template match="@*|node()" priority="-2" mode="M410"><axsl:apply-templates select="@*|*" mode="M410"/></axsl:template>

<!--PATTERN pixos-def_vertst-->


	<!--RULE -->
<axsl:template match="pixos-def:version_test/pixos-def:object" priority="1001" mode="M411">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/pixos-def:version_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a version_test must reference a version_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M411"/></axsl:template>

	<!--RULE -->
<axsl:template match="pixos-def:version_test/pixos-def:state" priority="1000" mode="M411">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/pixos-def:version_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a version_test must reference a version_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M411"/></axsl:template><axsl:template match="text()" priority="-1" mode="M411"/><axsl:template match="@*|node()" priority="-2" mode="M411"><axsl:apply-templates select="@*|*" mode="M411"/></axsl:template>

<!--PATTERN sp-def_webapptst-->


	<!--RULE -->
<axsl:template match="sp-def:spwebapplication_test/sp-def:object" priority="1001" mode="M412">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spwebapplication_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a spwebapplication_test must reference an spwebapplication_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M412"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:spwebapplication_test/sp-def:state" priority="1000" mode="M412">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spwebapplication_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a spwebapplication_test must reference an spwebapplication_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M412"/></axsl:template><axsl:template match="text()" priority="-1" mode="M412"/><axsl:template match="@*|node()" priority="-2" mode="M412"><axsl:apply-templates select="@*|*" mode="M412"/></axsl:template>

<!--PATTERN sp-def_spwebapplication_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:spwebapplication_object//oval-def:filter" priority="1000" mode="M413"><axsl:variable name="parent_object" select="ancestor::sp-def:spwebapplication_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spwebapplication_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M413"/></axsl:template><axsl:template match="text()" priority="-1" mode="M413"/><axsl:template match="@*|node()" priority="-2" mode="M413"><axsl:apply-templates select="@*|*" mode="M413"/></axsl:template>

<!--PATTERN sp-def_grptst-->


	<!--RULE -->
<axsl:template match="sp-def:spgroup_test/sp-def:object" priority="1001" mode="M414">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spgroup_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a spgroup_test must reference a spgroup_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M414"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:spgroup_test/sp-def:state" priority="1000" mode="M414">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spgroup_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a spgroup_test must reference a spgroup_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M414"/></axsl:template><axsl:template match="text()" priority="-1" mode="M414"/><axsl:template match="@*|node()" priority="-2" mode="M414"><axsl:apply-templates select="@*|*" mode="M414"/></axsl:template>

<!--PATTERN sp-def_spgroup_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:spgroup_object//oval-def:filter" priority="1000" mode="M415"><axsl:variable name="parent_object" select="ancestor::sp-def:spgroup_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spgroup_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M415"/></axsl:template><axsl:template match="text()" priority="-1" mode="M415"/><axsl:template match="@*|node()" priority="-2" mode="M415"><axsl:apply-templates select="@*|*" mode="M415"/></axsl:template>

<!--PATTERN sp-def_webtst-->


	<!--RULE -->
<axsl:template match="sp-def:spweb_test/sp-def:object" priority="1001" mode="M416">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spweb_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a spweb_test must reference an spweb_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M416"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:spweb_test/sp-def:state" priority="1000" mode="M416">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spweb_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a spweb_test must reference an spweb_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M416"/></axsl:template><axsl:template match="text()" priority="-1" mode="M416"/><axsl:template match="@*|node()" priority="-2" mode="M416"><axsl:apply-templates select="@*|*" mode="M416"/></axsl:template>

<!--PATTERN sp-def_spweb_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:spweb_object//oval-def:filter" priority="1000" mode="M417"><axsl:variable name="parent_object" select="ancestor::sp-def:spweb_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spweb_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M417"/></axsl:template><axsl:template match="text()" priority="-1" mode="M417"/><axsl:template match="@*|node()" priority="-2" mode="M417"><axsl:apply-templates select="@*|*" mode="M417"/></axsl:template>

<!--PATTERN sp-def_listtst-->


	<!--RULE -->
<axsl:template match="sp-def:splist_test/sp-def:object" priority="1001" mode="M418">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:splist_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a splist_test must reference an splist_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M418"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:splist_test/sp-def:state" priority="1000" mode="M418">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:splist_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a splist_test must reference an splist_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M418"/></axsl:template><axsl:template match="text()" priority="-1" mode="M418"/><axsl:template match="@*|node()" priority="-2" mode="M418"><axsl:apply-templates select="@*|*" mode="M418"/></axsl:template>

<!--PATTERN sp-def_splist_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:splist_object//oval-def:filter" priority="1000" mode="M419"><axsl:variable name="parent_object" select="ancestor::sp-def:splist_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='splist_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M419"/></axsl:template><axsl:template match="text()" priority="-1" mode="M419"/><axsl:template match="@*|node()" priority="-2" mode="M419"><axsl:apply-templates select="@*|*" mode="M419"/></axsl:template>

<!--PATTERN sp-def_avstst-->


	<!--RULE -->
<axsl:template match="sp-def:spantivirussettings_test/sp-def:object" priority="1001" mode="M420">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spantivirussettings_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a spantivirussettings_test must reference an spantivirussettings_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M420"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:spantivirussettings_test/sp-def:state" priority="1000" mode="M420">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spantivirussettings_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a spantivirussettings_test must reference an spantivirussettings_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M420"/></axsl:template><axsl:template match="text()" priority="-1" mode="M420"/><axsl:template match="@*|node()" priority="-2" mode="M420"><axsl:apply-templates select="@*|*" mode="M420"/></axsl:template>

<!--PATTERN sp-def_spantivirussettings_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:spantivirussettings_object//oval-def:filter" priority="1000" mode="M421"><axsl:variable name="parent_object" select="ancestor::sp-def:spantivirussettings_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spantivirussettings_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M421"/></axsl:template><axsl:template match="text()" priority="-1" mode="M421"/><axsl:template match="@*|node()" priority="-2" mode="M421"><axsl:apply-templates select="@*|*" mode="M421"/></axsl:template>

<!--PATTERN sp-def_siteadmintst-->


	<!--RULE -->
<axsl:template match="sp-def:spsiteadministration_test/sp-def:object" priority="1001" mode="M422">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spsiteadministration_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a spsiteadministration_test must reference an spsiteadministration_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M422"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:spsiteadministration_test/sp-def:state" priority="1000" mode="M422">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spsiteadministration_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a spsiteadministration_test must reference an spsiteadministration_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M422"/></axsl:template><axsl:template match="text()" priority="-1" mode="M422"/><axsl:template match="@*|node()" priority="-2" mode="M422"><axsl:apply-templates select="@*|*" mode="M422"/></axsl:template>

<!--PATTERN sp-def_spsiteadministration_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:spsiteadministration_object//oval-def:filter" priority="1000" mode="M423"><axsl:variable name="parent_object" select="ancestor::sp-def:spsiteadministration_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spsiteadministration_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M423"/></axsl:template><axsl:template match="text()" priority="-1" mode="M423"/><axsl:template match="@*|node()" priority="-2" mode="M423"><axsl:apply-templates select="@*|*" mode="M423"/></axsl:template>

<!--PATTERN sp-def_sitetst-->


	<!--RULE -->
<axsl:template match="sp-def:spsite_test/sp-def:object" priority="1001" mode="M424">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spsite_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a spsite_test must reference an spsite_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M424"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:spsite_test/sp-def:state" priority="1000" mode="M424">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spsite_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a spsite_test must reference an spsite_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M424"/></axsl:template><axsl:template match="text()" priority="-1" mode="M424"/><axsl:template match="@*|node()" priority="-2" mode="M424"><axsl:apply-templates select="@*|*" mode="M424"/></axsl:template>

<!--PATTERN sp-def_spsite_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:spsite_object//oval-def:filter" priority="1000" mode="M425"><axsl:variable name="parent_object" select="ancestor::sp-def:spsite_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spsite_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M425"/></axsl:template><axsl:template match="text()" priority="-1" mode="M425"/><axsl:template match="@*|node()" priority="-2" mode="M425"><axsl:apply-templates select="@*|*" mode="M425"/></axsl:template>

<!--PATTERN sp_def_spsite_state_url_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:states/sp-def:spsite_state/sp-def:url" priority="1000" mode="M426">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ENTITY IN: sp-def:spsite_state <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M426"/></axsl:template><axsl:template match="text()" priority="-1" mode="M426"/><axsl:template match="@*|node()" priority="-2" mode="M426"><axsl:apply-templates select="@*|*" mode="M426"/></axsl:template>

<!--PATTERN sp-def_crtst-->


	<!--RULE -->
<axsl:template match="sp-def:spcrawlrule_test/sp-def:object" priority="1001" mode="M427">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spcrawlrule_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a spcrawlrule_test must reference an spcrawlrule_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M427"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:spcrawlrule_test/sp-def:state" priority="1000" mode="M427">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spcrawlrule_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a spcrawlrule_test must reference an spcrawlrule_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M427"/></axsl:template><axsl:template match="text()" priority="-1" mode="M427"/><axsl:template match="@*|node()" priority="-2" mode="M427"><axsl:apply-templates select="@*|*" mode="M427"/></axsl:template>

<!--PATTERN sp-def_spcrawlrule_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:spcrawlrule_object//oval-def:filter" priority="1000" mode="M428"><axsl:variable name="parent_object" select="ancestor::sp-def:spcrawlrule_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spcrawlrule_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M428"/></axsl:template><axsl:template match="text()" priority="-1" mode="M428"/><axsl:template match="@*|node()" priority="-2" mode="M428"><axsl:apply-templates select="@*|*" mode="M428"/></axsl:template>

<!--PATTERN sp-def_spjobdefinition_test_dep-->


	<!--RULE -->
<axsl:template match="sp-def:spjobdefinition_test" priority="1000" mode="M429">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M429"/></axsl:template><axsl:template match="text()" priority="-1" mode="M429"/><axsl:template match="@*|node()" priority="-2" mode="M429"><axsl:apply-templates select="@*|*" mode="M429"/></axsl:template>

<!--PATTERN sp-def_jobdeftst-->


	<!--RULE -->
<axsl:template match="sp-def:spjobdefinition_test/sp-def:object" priority="1001" mode="M430">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spjobdefinition_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a spjobdefinition_test must reference an spjobdefinition_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M430"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:spjobdefinition_test/sp-def:state" priority="1000" mode="M430">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spjobdefinition_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a spjobdefinition_test must reference an spjobdefinition_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M430"/></axsl:template><axsl:template match="text()" priority="-1" mode="M430"/><axsl:template match="@*|node()" priority="-2" mode="M430"><axsl:apply-templates select="@*|*" mode="M430"/></axsl:template>

<!--PATTERN sp-def_spjobdefinition_object_dep-->


	<!--RULE -->
<axsl:template match="sp-def:spjobdefinition_object" priority="1000" mode="M431">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M431"/></axsl:template><axsl:template match="text()" priority="-1" mode="M431"/><axsl:template match="@*|node()" priority="-2" mode="M431"><axsl:apply-templates select="@*|*" mode="M431"/></axsl:template>

<!--PATTERN sp-def_spjobdefinition_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:spjobdefinition_object//oval-def:filter" priority="1000" mode="M432"><axsl:variable name="parent_object" select="ancestor::sp-def:spjobdefinition_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spjobdefinition_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M432"/></axsl:template><axsl:template match="text()" priority="-1" mode="M432"/><axsl:template match="@*|node()" priority="-2" mode="M432"><axsl:apply-templates select="@*|*" mode="M432"/></axsl:template>

<!--PATTERN sp-def_spjobdefinition_state_dep-->


	<!--RULE -->
<axsl:template match="sp-def:spjobdefinition_state" priority="1000" mode="M433">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M433"/></axsl:template><axsl:template match="text()" priority="-1" mode="M433"/><axsl:template match="@*|node()" priority="-2" mode="M433"><axsl:apply-templates select="@*|*" mode="M433"/></axsl:template>

<!--PATTERN sp-def_jobdef510tst-->


	<!--RULE -->
<axsl:template match="sp-def:spjobdefinition510_test/sp-def:object" priority="1001" mode="M434">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spjobdefinition510_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a spjobdefinition510_test must reference an spjobdefinition510_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M434"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:spjobdefinition510_test/sp-def:state" priority="1000" mode="M434">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spjobdefinition510_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a spjobdefinition510_test must reference an spjobdefinition510_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M434"/></axsl:template><axsl:template match="text()" priority="-1" mode="M434"/><axsl:template match="@*|node()" priority="-2" mode="M434"><axsl:apply-templates select="@*|*" mode="M434"/></axsl:template>

<!--PATTERN sp-def_spjobdefinition510_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:spjobdefinition510_object//oval-def:filter" priority="1000" mode="M435"><axsl:variable name="parent_object" select="ancestor::sp-def:spjobdefinition510_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spjobdefinition510_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M435"/></axsl:template><axsl:template match="text()" priority="-1" mode="M435"/><axsl:template match="@*|node()" priority="-2" mode="M435"><axsl:apply-templates select="@*|*" mode="M435"/></axsl:template>

<!--PATTERN sp-def_bbtst-->


	<!--RULE -->
<axsl:template match="sp-def:bestbet_test/sp-def:object" priority="1001" mode="M436">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:bestbet_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a bestbet_test must reference an bestbet_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M436"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:bestbet_test/sp-def:state" priority="1000" mode="M436">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:bestbet_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a bestbet_test must reference an bestbet_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M436"/></axsl:template><axsl:template match="text()" priority="-1" mode="M436"/><axsl:template match="@*|node()" priority="-2" mode="M436"><axsl:apply-templates select="@*|*" mode="M436"/></axsl:template>

<!--PATTERN sp-def_bestbet_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:bestbet_object//oval-def:filter" priority="1000" mode="M437"><axsl:variable name="parent_object" select="ancestor::sp-def:bestbet_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='bestbet_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M437"/></axsl:template><axsl:template match="text()" priority="-1" mode="M437"/><axsl:template match="@*|node()" priority="-2" mode="M437"><axsl:apply-templates select="@*|*" mode="M437"/></axsl:template>

<!--PATTERN sp-def_infopolicycolltst-->


	<!--RULE -->
<axsl:template match="sp-def:policycoll_test/sp-def:object" priority="1001" mode="M438">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:policycoll_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a policycoll_test must reference an policycoll_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M438"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:policycoll_test/sp-def:state" priority="1000" mode="M438">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:policycoll_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a policycoll_test must reference an policycoll_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M438"/></axsl:template><axsl:template match="text()" priority="-1" mode="M438"/><axsl:template match="@*|node()" priority="-2" mode="M438"><axsl:apply-templates select="@*|*" mode="M438"/></axsl:template>

<!--PATTERN sp-def_infopolicycoll_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:infopolicycoll_object//oval-def:filter" priority="1000" mode="M439"><axsl:variable name="parent_object" select="ancestor::sp-def:infopolicycoll_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='infopolicycoll_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M439"/></axsl:template><axsl:template match="text()" priority="-1" mode="M439"/><axsl:template match="@*|node()" priority="-2" mode="M439"><axsl:apply-templates select="@*|*" mode="M439"/></axsl:template>

<!--PATTERN sp-def_diagnosticsservicetest-->


	<!--RULE -->
<axsl:template match="sp-def:spdiagnosticsservice_test/sp-def:object" priority="1001" mode="M440">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spdiagnosticsservice_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an spdiagnosticsservice_test must reference an spdiagnosticsservice_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M440"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:spdiagnosticsservice_test/sp-def:state" priority="1000" mode="M440">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spdiagnosticsservice_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an spdiagnosticsservice_test must reference an spdiagnosticsservice_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M440"/></axsl:template><axsl:template match="text()" priority="-1" mode="M440"/><axsl:template match="@*|node()" priority="-2" mode="M440"><axsl:apply-templates select="@*|*" mode="M440"/></axsl:template>

<!--PATTERN sp-def_spdiagnosticsservice_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:spdiagnosticsservice_object//oval-def:filter" priority="1000" mode="M441"><axsl:variable name="parent_object" select="ancestor::sp-def:spdiagnosticsservice_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spdiagnosticsservice_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M441"/></axsl:template><axsl:template match="text()" priority="-1" mode="M441"/><axsl:template match="@*|node()" priority="-2" mode="M441"><axsl:apply-templates select="@*|*" mode="M441"/></axsl:template>

<!--PATTERN sp-def_diagnostics_level_test-->


	<!--RULE -->
<axsl:template match="sp-def:spdiagnosticslevel_test/sp-def:object" priority="1001" mode="M442">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spdiagnosticslevel_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an spdiagnosticslevel_test must reference an spdiagnosticslevel_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M442"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:spdiagnosticslevel_test/sp-def:state" priority="1000" mode="M442">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spdiagnosticslevel_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an spdiagnosticslevel_test must reference an spdiagnosticslevel_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M442"/></axsl:template><axsl:template match="text()" priority="-1" mode="M442"/><axsl:template match="@*|node()" priority="-2" mode="M442"><axsl:apply-templates select="@*|*" mode="M442"/></axsl:template>

<!--PATTERN sp-def_spdiagnosticslevel_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:spdiagnosticslevel_object//oval-def:filter" priority="1000" mode="M443"><axsl:variable name="parent_object" select="ancestor::sp-def:spdiagnosticslevel_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='spdiagnosticslevel_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M443"/></axsl:template><axsl:template match="text()" priority="-1" mode="M443"/><axsl:template match="@*|node()" priority="-2" mode="M443"><axsl:apply-templates select="@*|*" mode="M443"/></axsl:template>

<!--PATTERN sp-def_policyfeature_test-->


	<!--RULE -->
<axsl:template match="sp-def:sppolicyfeature_test/sp-def:object" priority="1001" mode="M444">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:sppolicyfeature_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an sppolicyfeature_test must reference an sppolicyfeature_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M444"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:sppolicyfeature_test/sp-def:state" priority="1000" mode="M444">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:sppolicyfeature_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an sppolicyfeature_test must reference an sppolicyfeature_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M444"/></axsl:template><axsl:template match="text()" priority="-1" mode="M444"/><axsl:template match="@*|node()" priority="-2" mode="M444"><axsl:apply-templates select="@*|*" mode="M444"/></axsl:template>

<!--PATTERN sp-def_sppolicyfeature_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sp-def:sppolicyfeature_object//oval-def:filter" priority="1000" mode="M445"><axsl:variable name="parent_object" select="ancestor::sp-def:sppolicyfeature_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint') and ($state_name='sppolicyfeature_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M445"/></axsl:template><axsl:template match="text()" priority="-1" mode="M445"/><axsl:template match="@*|node()" priority="-2" mode="M445"><axsl:apply-templates select="@*|*" mode="M445"/></axsl:template>

<!--PATTERN sp-def_policy_test-->


	<!--RULE -->
<axsl:template match="sp-def:sppolicy_test/sp-def:object" priority="1001" mode="M446">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:sppolicy_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an sppolicy_test must reference an sppolicy_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M446"/></axsl:template>

	<!--RULE -->
<axsl:template match="sp-def:sppolicy_test/sp-def:state" priority="1000" mode="M446">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:sppolicy_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an sppolicy_test must reference an sppolicy_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M446"/></axsl:template><axsl:template match="text()" priority="-1" mode="M446"/><axsl:template match="@*|node()" priority="-2" mode="M446"><axsl:apply-templates select="@*|*" mode="M446"/></axsl:template>

<!--PATTERN sol-def_facet_test-->


	<!--RULE -->
<axsl:template match="sol-def:facet_test/sol-def:object" priority="1001" mode="M447">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:facet_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an facet_test must reference an facet_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M447"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:facet_test/sol-def:state" priority="1000" mode="M447">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:facet_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an facet_test must reference an facet_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M447"/></axsl:template><axsl:template match="text()" priority="-1" mode="M447"/><axsl:template match="@*|node()" priority="-2" mode="M447"><axsl:apply-templates select="@*|*" mode="M447"/></axsl:template>

<!--PATTERN sol-def_facet_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:facet_object//oval-def:filter" priority="1000" mode="M448"><axsl:variable name="parent_object" select="ancestor::sol-def:facet_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='facet_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M448"/></axsl:template><axsl:template match="text()" priority="-1" mode="M448"/><axsl:template match="@*|node()" priority="-2" mode="M448"><axsl:apply-templates select="@*|*" mode="M448"/></axsl:template>

<!--PATTERN sol-def_image_test-->


	<!--RULE -->
<axsl:template match="sol-def:image_test/sol-def:object" priority="1001" mode="M449">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:image_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an image_test must reference an image_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M449"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:image_test/sol-def:state" priority="1000" mode="M449">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:image_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an image_test must reference an image_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M449"/></axsl:template><axsl:template match="text()" priority="-1" mode="M449"/><axsl:template match="@*|node()" priority="-2" mode="M449"><axsl:apply-templates select="@*|*" mode="M449"/></axsl:template>

<!--PATTERN sol-def_image_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:image_object//oval-def:filter" priority="1000" mode="M450"><axsl:variable name="parent_object" select="ancestor::sol-def:image_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='image_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M450"/></axsl:template><axsl:template match="text()" priority="-1" mode="M450"/><axsl:template match="@*|node()" priority="-2" mode="M450"><axsl:apply-templates select="@*|*" mode="M450"/></axsl:template>

<!--PATTERN sol-def_isainfotst-->


	<!--RULE -->
<axsl:template match="sol-def:isainfo_test/sol-def:object" priority="1001" mode="M451">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:isainfo_object/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an isainfo_test must reference an isainfo_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M451"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:isainfo_test/sol-def:state" priority="1000" mode="M451">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:isainfo_state/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an isainfo_test must reference an isainfo_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M451"/></axsl:template><axsl:template match="text()" priority="-1" mode="M451"/><axsl:template match="@*|node()" priority="-2" mode="M451"><axsl:apply-templates select="@*|*" mode="M451"/></axsl:template>

<!--PATTERN sol-def_ndd_test-->


	<!--RULE -->
<axsl:template match="sol-def:ndd_test/sol-def:object" priority="1001" mode="M452">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:ndd_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an ndd_test must reference an ndd_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M452"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:ndd_test/sol-def:state" priority="1000" mode="M452">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:ndd_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an ndd_test must reference an ndd_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M452"/></axsl:template><axsl:template match="text()" priority="-1" mode="M452"/><axsl:template match="@*|node()" priority="-2" mode="M452"><axsl:apply-templates select="@*|*" mode="M452"/></axsl:template>

<!--PATTERN sol-def_ndd_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:ndd_object//oval-def:filter" priority="1000" mode="M453"><axsl:variable name="parent_object" select="ancestor::sol-def:ndd_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='ndd_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M453"/></axsl:template><axsl:template match="text()" priority="-1" mode="M453"/><axsl:template match="@*|node()" priority="-2" mode="M453"><axsl:apply-templates select="@*|*" mode="M453"/></axsl:template>

<!--PATTERN sol-def_packagetst-->


	<!--RULE -->
<axsl:template match="sol-def:package_test/sol-def:object" priority="1001" mode="M454">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:package_object/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a package_test must reference a package_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M454"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:package_test/sol-def:state" priority="1000" mode="M454">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:package_state/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a package_test must reference a package_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M454"/></axsl:template><axsl:template match="text()" priority="-1" mode="M454"/><axsl:template match="@*|node()" priority="-2" mode="M454"><axsl:apply-templates select="@*|*" mode="M454"/></axsl:template>

<!--PATTERN sol-def_package_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:package_object//oval-def:filter" priority="1000" mode="M455"><axsl:variable name="parent_object" select="ancestor::sol-def:package_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='package_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M455"/></axsl:template><axsl:template match="text()" priority="-1" mode="M455"/><axsl:template match="@*|node()" priority="-2" mode="M455"><axsl:apply-templates select="@*|*" mode="M455"/></axsl:template>

<!--PATTERN sol-def_package511_test-->


	<!--RULE -->
<axsl:template match="sol-def:package511_test/sol-def:object" priority="1001" mode="M456">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:package511_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an package511_test must reference an package511_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M456"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:package511_test/sol-def:state" priority="1000" mode="M456">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:package511_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an package511_test must reference an package511_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M456"/></axsl:template><axsl:template match="text()" priority="-1" mode="M456"/><axsl:template match="@*|node()" priority="-2" mode="M456"><axsl:apply-templates select="@*|*" mode="M456"/></axsl:template>

<!--PATTERN sol-def_package511_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:package511_object//oval-def:filter" priority="1000" mode="M457"><axsl:variable name="parent_object" select="ancestor::sol-def:package511_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='package511_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M457"/></axsl:template><axsl:template match="text()" priority="-1" mode="M457"/><axsl:template match="@*|node()" priority="-2" mode="M457"><axsl:apply-templates select="@*|*" mode="M457"/></axsl:template>

<!--PATTERN sol-def_packageavoidlist_test-->


	<!--RULE -->
<axsl:template match="sol-def:packageavoidlist_test/sol-def:object" priority="1001" mode="M458">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:packageavoidlist_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an packageavoidlist_test must reference a packageavoidlist_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M458"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:packageavoidlist_test/sol-def:state" priority="1000" mode="M458">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:packageavoidlist_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an packageavoidlist_test must reference a packageavoidlist_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M458"/></axsl:template><axsl:template match="text()" priority="-1" mode="M458"/><axsl:template match="@*|node()" priority="-2" mode="M458"><axsl:apply-templates select="@*|*" mode="M458"/></axsl:template>

<!--PATTERN sol-def_packageavoidlist_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:packageavoidlist_object//oval-def:filter" priority="1000" mode="M459"><axsl:variable name="parent_object" select="ancestor::sol-def:packageavoidlist_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='packageavoidlist_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M459"/></axsl:template><axsl:template match="text()" priority="-1" mode="M459"/><axsl:template match="@*|node()" priority="-2" mode="M459"><axsl:apply-templates select="@*|*" mode="M459"/></axsl:template>

<!--PATTERN sol-def_packagechecktst-->


	<!--RULE -->
<axsl:template match="sol-def:packagecheck_test/sol-def:object" priority="1001" mode="M460">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:packagecheck_object/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a packagecheck_test must reference a packagecheck_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M460"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:packagecheck_test/sol-def:state" priority="1000" mode="M460">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:packagecheck_state/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a packagecheck_test must reference a packagecheck_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M460"/></axsl:template><axsl:template match="text()" priority="-1" mode="M460"/><axsl:template match="@*|node()" priority="-2" mode="M460"><axsl:apply-templates select="@*|*" mode="M460"/></axsl:template>

<!--PATTERN sol-def_packagecheck_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:packagecheck_object//oval-def:filter" priority="1000" mode="M461"><axsl:variable name="parent_object" select="ancestor::sol-def:packagecheck_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='packagecheck_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M461"/></axsl:template><axsl:template match="text()" priority="-1" mode="M461"/><axsl:template match="@*|node()" priority="-2" mode="M461"><axsl:apply-templates select="@*|*" mode="M461"/></axsl:template>

<!--PATTERN sol-def_packagefreezelist_test-->


	<!--RULE -->
<axsl:template match="sol-def:packagefreezelist_test/sol-def:object" priority="1001" mode="M462">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:packagefreezelist_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an packagefreezelist_test must reference a packagefreezelist_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M462"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:packagefreezelist_test/sol-def:state" priority="1000" mode="M462">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:packagefreezelist_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an packagefreezelist_test must reference a packagefreezelist_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M462"/></axsl:template><axsl:template match="text()" priority="-1" mode="M462"/><axsl:template match="@*|node()" priority="-2" mode="M462"><axsl:apply-templates select="@*|*" mode="M462"/></axsl:template>

<!--PATTERN sol-def_packagefreezelist_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:packagefreezelist_object//oval-def:filter" priority="1000" mode="M463"><axsl:variable name="parent_object" select="ancestor::sol-def:packagefreezelist_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='packagefreezelist_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M463"/></axsl:template><axsl:template match="text()" priority="-1" mode="M463"/><axsl:template match="@*|node()" priority="-2" mode="M463"><axsl:apply-templates select="@*|*" mode="M463"/></axsl:template>

<!--PATTERN sol-def_packagepublisher_test-->


	<!--RULE -->
<axsl:template match="sol-def:packagepublisher_test/sol-def:object" priority="1001" mode="M464">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:packagepublisher_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an packagepublisher_test must reference a packagepublisher_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M464"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:packagepublisher_test/sol-def:state" priority="1000" mode="M464">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:packagepublisher_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an packagepublisher_test must reference a packagepublisher_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M464"/></axsl:template><axsl:template match="text()" priority="-1" mode="M464"/><axsl:template match="@*|node()" priority="-2" mode="M464"><axsl:apply-templates select="@*|*" mode="M464"/></axsl:template>

<!--PATTERN sol-def_packagepublisher_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:packagepublisher_object//oval-def:filter" priority="1000" mode="M465"><axsl:variable name="parent_object" select="ancestor::sol-def:packagepublisher_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='packagepublisher_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M465"/></axsl:template><axsl:template match="text()" priority="-1" mode="M465"/><axsl:template match="@*|node()" priority="-2" mode="M465"><axsl:apply-templates select="@*|*" mode="M465"/></axsl:template>

<!--PATTERN sol-def_patch54tst-->


	<!--RULE -->
<axsl:template match="sol-def:patch54_test/sol-def:object" priority="1001" mode="M466">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:patch54_object/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a patch54_test must reference a patch54_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M466"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:patch54_test/sol-def:state" priority="1000" mode="M466">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:patch_state/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a patch54_test must reference a patch_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M466"/></axsl:template><axsl:template match="text()" priority="-1" mode="M466"/><axsl:template match="@*|node()" priority="-2" mode="M466"><axsl:apply-templates select="@*|*" mode="M466"/></axsl:template>

<!--PATTERN sol-def_patchtst_dep-->


	<!--RULE -->
<axsl:template match="sol-def:patch_test" priority="1000" mode="M467">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M467"/></axsl:template><axsl:template match="text()" priority="-1" mode="M467"/><axsl:template match="@*|node()" priority="-2" mode="M467"><axsl:apply-templates select="@*|*" mode="M467"/></axsl:template>

<!--PATTERN sol-def_patchtst-->


	<!--RULE -->
<axsl:template match="sol-def:patch_test/sol-def:object" priority="1001" mode="M468">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:patch_object/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a patch_test must reference a patch_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M468"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:patch_test/sol-def:state" priority="1000" mode="M468">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:patch_state/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a patch_test must reference a patch_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M468"/></axsl:template><axsl:template match="text()" priority="-1" mode="M468"/><axsl:template match="@*|node()" priority="-2" mode="M468"><axsl:apply-templates select="@*|*" mode="M468"/></axsl:template>

<!--PATTERN sol-def_patch54_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:patch54_object//oval-def:filter" priority="1000" mode="M469"><axsl:variable name="parent_object" select="ancestor::sol-def:patch54_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='patch_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M469"/></axsl:template><axsl:template match="text()" priority="-1" mode="M469"/><axsl:template match="@*|node()" priority="-2" mode="M469"><axsl:apply-templates select="@*|*" mode="M469"/></axsl:template>

<!--PATTERN sol-def_patchobj_dep-->


	<!--RULE -->
<axsl:template match="sol-def:patch_object" priority="1000" mode="M470">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M470"/></axsl:template><axsl:template match="text()" priority="-1" mode="M470"/><axsl:template match="@*|node()" priority="-2" mode="M470"><axsl:apply-templates select="@*|*" mode="M470"/></axsl:template>

<!--PATTERN sol-def_smftst-->


	<!--RULE -->
<axsl:template match="sol-def:smf_test/sol-def:object" priority="1001" mode="M471">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:smf_object/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a smf_test must reference a smf_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M471"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:smf_test/sol-def:state" priority="1000" mode="M471">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:smf_state/@id"/><axsl:otherwise>
                                          <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a smf_test must reference a smf_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M471"/></axsl:template><axsl:template match="text()" priority="-1" mode="M471"/><axsl:template match="@*|node()" priority="-2" mode="M471"><axsl:apply-templates select="@*|*" mode="M471"/></axsl:template>

<!--PATTERN sol-def_smf_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:smf_object//oval-def:filter" priority="1000" mode="M472"><axsl:variable name="parent_object" select="ancestor::sol-def:smf_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='smf_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M472"/></axsl:template><axsl:template match="text()" priority="-1" mode="M472"/><axsl:template match="@*|node()" priority="-2" mode="M472"><axsl:apply-templates select="@*|*" mode="M472"/></axsl:template>

<!--PATTERN sol-def_smfproperty_test-->


	<!--RULE -->
<axsl:template match="sol-def:smfproperty_test/sol-def:object" priority="1001" mode="M473">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:smfproperty_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an smfproperty_test must reference an smfproperty_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M473"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:smfproperty_test/sol-def:state" priority="1000" mode="M473">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:smfproperty_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an smfproperty_test must reference an smfproperty_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M473"/></axsl:template><axsl:template match="text()" priority="-1" mode="M473"/><axsl:template match="@*|node()" priority="-2" mode="M473"><axsl:apply-templates select="@*|*" mode="M473"/></axsl:template>

<!--PATTERN sol-def_smfproperty_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:smfproperty_object//oval-def:filter" priority="1000" mode="M474"><axsl:variable name="parent_object" select="ancestor::sol-def:smfproperty_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='smfproperty_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M474"/></axsl:template><axsl:template match="text()" priority="-1" mode="M474"/><axsl:template match="@*|node()" priority="-2" mode="M474"><axsl:apply-templates select="@*|*" mode="M474"/></axsl:template>

<!--PATTERN sol-def_variant_test-->


	<!--RULE -->
<axsl:template match="sol-def:variant_test/sol-def:object" priority="1001" mode="M475">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:variant_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an variant_test must reference a variant_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M475"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:variant_test/sol-def:state" priority="1000" mode="M475">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:variant_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an variant_test must reference a variant_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M475"/></axsl:template><axsl:template match="text()" priority="-1" mode="M475"/><axsl:template match="@*|node()" priority="-2" mode="M475"><axsl:apply-templates select="@*|*" mode="M475"/></axsl:template>

<!--PATTERN sol-def_variant_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:variant_object//oval-def:filter" priority="1000" mode="M476"><axsl:variable name="parent_object" select="ancestor::sol-def:variant_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='variant_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M476"/></axsl:template><axsl:template match="text()" priority="-1" mode="M476"/><axsl:template match="@*|node()" priority="-2" mode="M476"><axsl:apply-templates select="@*|*" mode="M476"/></axsl:template>

<!--PATTERN sol-def_virtualizationinfo_test-->


	<!--RULE -->
<axsl:template match="sol-def:virtualizationinfo_test/sol-def:object" priority="1001" mode="M477">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:virtualizationinfo_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an virtualizationinfo_test must reference a virtualizationinfo_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M477"/></axsl:template>

	<!--RULE -->
<axsl:template match="sol-def:virtualizationinfo_test/sol-def:state" priority="1000" mode="M477">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:virtualizationinfo_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an virtualizationinfo_test must reference a virtualizationinfo_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M477"/></axsl:template><axsl:template match="text()" priority="-1" mode="M477"/><axsl:template match="@*|node()" priority="-2" mode="M477"><axsl:apply-templates select="@*|*" mode="M477"/></axsl:template>

<!--PATTERN sol-def_virtualizationinfo_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="sol-def:virtualizationinfo_object//oval-def:filter" priority="1000" mode="M478"><axsl:variable name="parent_object" select="ancestor::sol-def:virtualizationinfo_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris') and ($state_name='virtualizationinfo_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M478"/></axsl:template><axsl:template match="text()" priority="-1" mode="M478"/><axsl:template match="@*|node()" priority="-2" mode="M478"><axsl:apply-templates select="@*|*" mode="M478"/></axsl:template>

<!--PATTERN unix-def_dnscachetst-->


	<!--RULE -->
<axsl:template match="unix-def:dnscache_test/unix-def:object" priority="1001" mode="M479">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:dnscache_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a dnscache_test must reference a dnscache_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M479"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:dnscache_test/unix-def:state" priority="1000" mode="M479">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:dnscache_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a dnscache_test must reference a dnscache_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M479"/></axsl:template><axsl:template match="text()" priority="-1" mode="M479"/><axsl:template match="@*|node()" priority="-2" mode="M479"><axsl:apply-templates select="@*|*" mode="M479"/></axsl:template>

<!--PATTERN unix-def_dnscache_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:dnscache_object//oval-def:filter" priority="1000" mode="M480"><axsl:variable name="parent_object" select="ancestor::unix-def:dnscache_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='dnscache_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M480"/></axsl:template><axsl:template match="text()" priority="-1" mode="M480"/><axsl:template match="@*|node()" priority="-2" mode="M480"><axsl:apply-templates select="@*|*" mode="M480"/></axsl:template>

<!--PATTERN unix-def_filetst-->


	<!--RULE -->
<axsl:template match="unix-def:file_test/unix-def:object" priority="1001" mode="M481">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:file_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a file_test must reference a file_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M481"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:file_test/unix-def:state" priority="1000" mode="M481">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:file_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a file_test must reference a file_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M481"/></axsl:template><axsl:template match="text()" priority="-1" mode="M481"/><axsl:template match="@*|node()" priority="-2" mode="M481"><axsl:apply-templates select="@*|*" mode="M481"/></axsl:template>

<!--PATTERN unix-def_file_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:file_object//oval-def:filter" priority="1000" mode="M482"><axsl:variable name="parent_object" select="ancestor::unix-def:file_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='file_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M482"/></axsl:template><axsl:template match="text()" priority="-1" mode="M482"/><axsl:template match="@*|node()" priority="-2" mode="M482"><axsl:apply-templates select="@*|*" mode="M482"/></axsl:template>

<!--PATTERN unix-def_fileobjfilepath-->


	<!--RULE -->
<axsl:template match="unix-def:file_object/unix-def:filepath" priority="1000" mode="M483">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@max_depth or @recurse or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth, recurse, and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M483"/></axsl:template><axsl:template match="text()" priority="-1" mode="M483"/><axsl:template match="@*|node()" priority="-2" mode="M483"><axsl:apply-templates select="@*|*" mode="M483"/></axsl:template>

<!--PATTERN unix-def_fileobjfilepath2-->


	<!--RULE -->
<axsl:template match="unix-def:file_object/unix-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M484">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M484"/></axsl:template><axsl:template match="text()" priority="-1" mode="M484"/><axsl:template match="@*|node()" priority="-2" mode="M484"><axsl:apply-templates select="@*|*" mode="M484"/></axsl:template>

<!--PATTERN unix-def_fileobjpath-->


	<!--RULE -->
<axsl:template match="unix-def:file_object/unix-def:path[not(@operation='equals' or not(@operation))]" priority="1000" mode="M485">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M485"/></axsl:template><axsl:template match="text()" priority="-1" mode="M485"/><axsl:template match="@*|node()" priority="-2" mode="M485"><axsl:apply-templates select="@*|*" mode="M485"/></axsl:template>

<!--PATTERN unix-def_file_objectfilename-->


	<!--RULE -->
<axsl:template match="unix-def:file_object/unix-def:filename" priority="1000" mode="M486">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or (@xsi:nil='1' or @xsi:nil='true') or not(.='') or (.='' and @operation = 'pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M486"/></axsl:template><axsl:template match="text()" priority="-1" mode="M486"/><axsl:template match="@*|node()" priority="-2" mode="M486"><axsl:apply-templates select="@*|*" mode="M486"/></axsl:template>

<!--PATTERN unix-def_file_gid-->


	<!--RULE -->
<axsl:template match="unix-def:file_state/unix-def:group_id" priority="1000" mode="M487">

		<!--ASSERT -->
<axsl:choose><axsl:when test="string-length(.) = 0 or number(.) &lt; 0"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of group_id must be greater than zero<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M487"/></axsl:template><axsl:template match="text()" priority="-1" mode="M487"/><axsl:template match="@*|node()" priority="-2" mode="M487"><axsl:apply-templates select="@*|*" mode="M487"/></axsl:template>

<!--PATTERN unix-def_file_uid-->


	<!--RULE -->
<axsl:template match="unix-def:file_state/unix-def:user_id" priority="1000" mode="M488">

		<!--ASSERT -->
<axsl:choose><axsl:when test="string-length(.) = 0 or number(.) &lt; 0"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of user_id must be greater than zero<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M488"/></axsl:template><axsl:template match="text()" priority="-1" mode="M488"/><axsl:template match="@*|node()" priority="-2" mode="M488"><axsl:apply-templates select="@*|*" mode="M488"/></axsl:template>

<!--PATTERN unix-def_recurse_value_file_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/unix-def:file_object/unix-def:behaviors" priority="1000" mode="M489">

		<!--REPORT -->
<axsl:if test="@recurse='files'">DEPRECATED ATTRIBUTE VALUE IN: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ATTRIBUTE VALUE: <axsl:text/><axsl:value-of select="@recurse"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if>

		<!--REPORT -->
<axsl:if test="@recurse='files and directories'">DEPRECATED ATTRIBUTE VALUE IN: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ATTRIBUTE VALUE: <axsl:text/><axsl:value-of select="@recurse"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if>

		<!--REPORT -->
<axsl:if test="@recurse='none'"> DEPRECATED ATTRIBUTE VALUE IN: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ATTRIBUTE VALUE: <axsl:text/><axsl:value-of select="@recurse"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M489"/></axsl:template><axsl:template match="text()" priority="-1" mode="M489"/><axsl:template match="@*|node()" priority="-2" mode="M489"><axsl:apply-templates select="@*|*" mode="M489"/></axsl:template>

<!--PATTERN unix-def_file_ea_tst-->


	<!--RULE -->
<axsl:template match="unix-def:filextendedattribute_test/unix-def:object" priority="1001" mode="M490">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:fileextendedattribute_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a fileextendedattribute_test must reference a fileextendedattribute_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M490"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:fileextendedattribute_test/unix-def:state" priority="1000" mode="M490">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:fileextendedattribute_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a fileextendedattribute_test must reference a fileextendedattribute_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M490"/></axsl:template><axsl:template match="text()" priority="-1" mode="M490"/><axsl:template match="@*|node()" priority="-2" mode="M490"><axsl:apply-templates select="@*|*" mode="M490"/></axsl:template>

<!--PATTERN unix-def_fileextendedattribute_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:fileextendedattribute_object//oval-def:filter" priority="1000" mode="M491"><axsl:variable name="parent_object" select="ancestor::unix-def:fileextendedattribute_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='fileextendedattribute_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M491"/></axsl:template><axsl:template match="text()" priority="-1" mode="M491"/><axsl:template match="@*|node()" priority="-2" mode="M491"><axsl:apply-templates select="@*|*" mode="M491"/></axsl:template>

<!--PATTERN unix-def_file_ea_objfilepath-->


	<!--RULE -->
<axsl:template match="unix-def:fileextendedattribute_object/unix-def:filepath" priority="1000" mode="M492">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@max_depth or @recurse or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth, recurse, and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M492"/></axsl:template><axsl:template match="text()" priority="-1" mode="M492"/><axsl:template match="@*|node()" priority="-2" mode="M492"><axsl:apply-templates select="@*|*" mode="M492"/></axsl:template>

<!--PATTERN unix-def_file_ea_objfilepath2-->


	<!--RULE -->
<axsl:template match="unix-def:fileextendedattribute_object/unix-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M493">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M493"/></axsl:template><axsl:template match="text()" priority="-1" mode="M493"/><axsl:template match="@*|node()" priority="-2" mode="M493"><axsl:apply-templates select="@*|*" mode="M493"/></axsl:template>

<!--PATTERN unix-def_file_ea_objpath-->


	<!--RULE -->
<axsl:template match="unix-def:fileextendedattribute_object/unix-def:path[not(@operation='equals' or not(@operation))]" priority="1000" mode="M494">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M494"/></axsl:template><axsl:template match="text()" priority="-1" mode="M494"/><axsl:template match="@*|node()" priority="-2" mode="M494"><axsl:apply-templates select="@*|*" mode="M494"/></axsl:template>

<!--PATTERN unix-def_fileextendedattribute_objectfilename-->


	<!--RULE -->
<axsl:template match="unix-def:fileextendedattribute_object/unix-def:filename" priority="1000" mode="M495">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or ((@xsi:nil='1' or @xsi:nil='true') and .='') or not(.='') or (.='' and @operation = 'pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M495"/></axsl:template><axsl:template match="text()" priority="-1" mode="M495"/><axsl:template match="@*|node()" priority="-2" mode="M495"><axsl:apply-templates select="@*|*" mode="M495"/></axsl:template>

<!--PATTERN unix-def_gconf_test-->


	<!--RULE -->
<axsl:template match="unix-def:gconf_test/unix-def:object" priority="1001" mode="M496">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:gconf_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a gconf_test must reference an gconf_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M496"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:gconf_test/unix-def:state" priority="1000" mode="M496">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:gconf_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a gconf_test must reference an gconf_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M496"/></axsl:template><axsl:template match="text()" priority="-1" mode="M496"/><axsl:template match="@*|node()" priority="-2" mode="M496"><axsl:apply-templates select="@*|*" mode="M496"/></axsl:template>

<!--PATTERN unix-def_gconf_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:gconf_object//oval-def:filter" priority="1000" mode="M497"><axsl:variable name="parent_object" select="ancestor::unix-def:gconf_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='gconf_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M497"/></axsl:template><axsl:template match="text()" priority="-1" mode="M497"/><axsl:template match="@*|node()" priority="-2" mode="M497"><axsl:apply-templates select="@*|*" mode="M497"/></axsl:template>

<!--PATTERN unix-def_gconfobjsource-->


	<!--RULE -->
<axsl:template match="unix-def:gconf_object/unix-def:source" priority="1000" mode="M498">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise>
                                                                                    <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the source entity of a gconf_object should be 'equals'
                                                                              <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M498"/></axsl:template><axsl:template match="text()" priority="-1" mode="M498"/><axsl:template match="@*|node()" priority="-2" mode="M498"><axsl:apply-templates select="@*|*" mode="M498"/></axsl:template>

<!--PATTERN unix-def_inetdtst-->


	<!--RULE -->
<axsl:template match="unix-def:inetd_test/unix-def:object" priority="1001" mode="M499">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:inetd_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an inetd_test must reference an inetd_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M499"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:inetd_test/unix-def:state" priority="1000" mode="M499">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:inetd_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an inetd_test must reference an inetd_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M499"/></axsl:template><axsl:template match="text()" priority="-1" mode="M499"/><axsl:template match="@*|node()" priority="-2" mode="M499"><axsl:apply-templates select="@*|*" mode="M499"/></axsl:template>

<!--PATTERN unix-def_inetd_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:inetd_object//oval-def:filter" priority="1000" mode="M500"><axsl:variable name="parent_object" select="ancestor::unix-def:inetd_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='inetd_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M500"/></axsl:template><axsl:template match="text()" priority="-1" mode="M500"/><axsl:template match="@*|node()" priority="-2" mode="M500"><axsl:apply-templates select="@*|*" mode="M500"/></axsl:template>

<!--PATTERN unix-def_interfacetst-->


	<!--RULE -->
<axsl:template match="unix-def:interface_test/unix-def:object" priority="1001" mode="M501">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:interface_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an interface_test must reference an interface_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M501"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:interface_test/unix-def:state" priority="1000" mode="M501">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:interface_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an interface_test must reference an interface_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M501"/></axsl:template><axsl:template match="text()" priority="-1" mode="M501"/><axsl:template match="@*|node()" priority="-2" mode="M501"><axsl:apply-templates select="@*|*" mode="M501"/></axsl:template>

<!--PATTERN unix-def_interface_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:interface_object//oval-def:filter" priority="1000" mode="M502"><axsl:variable name="parent_object" select="ancestor::unix-def:interface_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='interface_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M502"/></axsl:template><axsl:template match="text()" priority="-1" mode="M502"/><axsl:template match="@*|node()" priority="-2" mode="M502"><axsl:apply-templates select="@*|*" mode="M502"/></axsl:template>

<!--PATTERN unix-def_passwordtst-->


	<!--RULE -->
<axsl:template match="unix-def:password_test/unix-def:object" priority="1001" mode="M503">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:password_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a password_test must reference a password_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M503"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:password_test/unix-def:state" priority="1000" mode="M503">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:password_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a password_test must reference a password_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M503"/></axsl:template><axsl:template match="text()" priority="-1" mode="M503"/><axsl:template match="@*|node()" priority="-2" mode="M503"><axsl:apply-templates select="@*|*" mode="M503"/></axsl:template>

<!--PATTERN unix-def_password_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:password_object//oval-def:filter" priority="1000" mode="M504"><axsl:variable name="parent_object" select="ancestor::unix-def:password_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='password_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M504"/></axsl:template><axsl:template match="text()" priority="-1" mode="M504"/><axsl:template match="@*|node()" priority="-2" mode="M504"><axsl:apply-templates select="@*|*" mode="M504"/></axsl:template>

<!--PATTERN unix-def_processtst_dep-->


	<!--RULE -->
<axsl:template match="unix-def:process_test" priority="1000" mode="M505">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M505"/></axsl:template><axsl:template match="text()" priority="-1" mode="M505"/><axsl:template match="@*|node()" priority="-2" mode="M505"><axsl:apply-templates select="@*|*" mode="M505"/></axsl:template>

<!--PATTERN unix-def_processtst-->


	<!--RULE -->
<axsl:template match="unix-def:process_test/unix-def:object" priority="1001" mode="M506">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:process_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a process_test must reference a process_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M506"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:process_test/unix-def:state" priority="1000" mode="M506">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:process_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a process_test must reference a process_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M506"/></axsl:template><axsl:template match="text()" priority="-1" mode="M506"/><axsl:template match="@*|node()" priority="-2" mode="M506"><axsl:apply-templates select="@*|*" mode="M506"/></axsl:template>

<!--PATTERN unix-def_processobj_dep-->


	<!--RULE -->
<axsl:template match="unix-def:process_object" priority="1000" mode="M507">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M507"/></axsl:template><axsl:template match="text()" priority="-1" mode="M507"/><axsl:template match="@*|node()" priority="-2" mode="M507"><axsl:apply-templates select="@*|*" mode="M507"/></axsl:template>

<!--PATTERN unix-def_processste_dep-->


	<!--RULE -->
<axsl:template match="unix-def:process_state" priority="1000" mode="M508">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M508"/></axsl:template><axsl:template match="text()" priority="-1" mode="M508"/><axsl:template match="@*|node()" priority="-2" mode="M508"><axsl:apply-templates select="@*|*" mode="M508"/></axsl:template>

<!--PATTERN unix-def_process58tst-->


	<!--RULE -->
<axsl:template match="unix-def:process58_test/unix-def:object" priority="1001" mode="M509">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:process58_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a process58_test must reference a process58_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M509"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:process58_test/unix-def:state" priority="1000" mode="M509">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:process58_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a process58_test must reference a process58_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M509"/></axsl:template><axsl:template match="text()" priority="-1" mode="M509"/><axsl:template match="@*|node()" priority="-2" mode="M509"><axsl:apply-templates select="@*|*" mode="M509"/></axsl:template>

<!--PATTERN unix-def_process58_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:process58_object//oval-def:filter" priority="1000" mode="M510"><axsl:variable name="parent_object" select="ancestor::unix-def:process58_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='process58_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M510"/></axsl:template><axsl:template match="text()" priority="-1" mode="M510"/><axsl:template match="@*|node()" priority="-2" mode="M510"><axsl:apply-templates select="@*|*" mode="M510"/></axsl:template>

<!--PATTERN unix-def_routingtable_test-->


	<!--RULE -->
<axsl:template match="unix-def:routingtable_test/unix-def:object" priority="1001" mode="M511">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:routingtable_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a routingtable_test must reference an routingtable_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M511"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:routingtable_test/unix-def:state" priority="1000" mode="M511">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:routingtable_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a routingtable_test must reference an routingtable_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M511"/></axsl:template><axsl:template match="text()" priority="-1" mode="M511"/><axsl:template match="@*|node()" priority="-2" mode="M511"><axsl:apply-templates select="@*|*" mode="M511"/></axsl:template>

<!--PATTERN unix-def_routingtable_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:routingtable_object//oval-def:filter" priority="1000" mode="M512"><axsl:variable name="parent_object" select="ancestor::unix-def:routingtable_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='routingtable_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M512"/></axsl:template><axsl:template match="text()" priority="-1" mode="M512"/><axsl:template match="@*|node()" priority="-2" mode="M512"><axsl:apply-templates select="@*|*" mode="M512"/></axsl:template>

<!--PATTERN unix-def_runleveltst-->


	<!--RULE -->
<axsl:template match="unix-def:runlevel_test/unix-def:object" priority="1001" mode="M513">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:runlevel_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a runlevel_test must reference a runlevel_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M513"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:runlevel_test/unix-def:state" priority="1000" mode="M513">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:runlevel_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a runlevel_test must reference a runlevel_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M513"/></axsl:template><axsl:template match="text()" priority="-1" mode="M513"/><axsl:template match="@*|node()" priority="-2" mode="M513"><axsl:apply-templates select="@*|*" mode="M513"/></axsl:template>

<!--PATTERN unix-def_runlevel_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:runlevel_object//oval-def:filter" priority="1000" mode="M514"><axsl:variable name="parent_object" select="ancestor::unix-def:runlevel_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='runlevel_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M514"/></axsl:template><axsl:template match="text()" priority="-1" mode="M514"/><axsl:template match="@*|node()" priority="-2" mode="M514"><axsl:apply-templates select="@*|*" mode="M514"/></axsl:template>

<!--PATTERN unix-def_sccstst_dep-->


	<!--RULE -->
<axsl:template match="unix-def:sccs_test" priority="1000" mode="M515">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M515"/></axsl:template><axsl:template match="text()" priority="-1" mode="M515"/><axsl:template match="@*|node()" priority="-2" mode="M515"><axsl:apply-templates select="@*|*" mode="M515"/></axsl:template>

<!--PATTERN unix-def_sccstst-->


	<!--RULE -->
<axsl:template match="unix-def:sccs_test/unix-def:object" priority="1001" mode="M516">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:sccs_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a sccs_test must reference a sccs_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M516"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:sccs_test/unix-def:state" priority="1000" mode="M516">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:sccs_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a sccs_test must reference a sccs_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M516"/></axsl:template><axsl:template match="text()" priority="-1" mode="M516"/><axsl:template match="@*|node()" priority="-2" mode="M516"><axsl:apply-templates select="@*|*" mode="M516"/></axsl:template>

<!--PATTERN unix-def_sccsobj_dep-->


	<!--RULE -->
<axsl:template match="unix-def:sccs_object" priority="1000" mode="M517">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M517"/></axsl:template><axsl:template match="text()" priority="-1" mode="M517"/><axsl:template match="@*|node()" priority="-2" mode="M517"><axsl:apply-templates select="@*|*" mode="M517"/></axsl:template>

<!--PATTERN unix-def_sccs_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:sccs_object//oval-def:filter" priority="1000" mode="M518"><axsl:variable name="parent_object" select="ancestor::unix-def:sccs_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='sccs_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M518"/></axsl:template><axsl:template match="text()" priority="-1" mode="M518"/><axsl:template match="@*|node()" priority="-2" mode="M518"><axsl:apply-templates select="@*|*" mode="M518"/></axsl:template>

<!--PATTERN unix-def_sccsobjfilepath-->


	<!--RULE -->
<axsl:template match="unix-def:sccs_object/unix-def:filepath" priority="1000" mode="M519">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@max_depth or @recurse or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth, recurse, and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M519"/></axsl:template><axsl:template match="text()" priority="-1" mode="M519"/><axsl:template match="@*|node()" priority="-2" mode="M519"><axsl:apply-templates select="@*|*" mode="M519"/></axsl:template>

<!--PATTERN unix-def_sccsobjfilepath2-->


	<!--RULE -->
<axsl:template match="unix-def:sccs_object/unix-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M520">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M520"/></axsl:template><axsl:template match="text()" priority="-1" mode="M520"/><axsl:template match="@*|node()" priority="-2" mode="M520"><axsl:apply-templates select="@*|*" mode="M520"/></axsl:template>

<!--PATTERN unix-def_sccsobjpath-->


	<!--RULE -->
<axsl:template match="unix-def:sccs_object/unix-def:path[not(@operation='equals' or not(@operation))]" priority="1000" mode="M521">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::unix-def:behaviors[@recurse])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M521"/></axsl:template><axsl:template match="text()" priority="-1" mode="M521"/><axsl:template match="@*|node()" priority="-2" mode="M521"><axsl:apply-templates select="@*|*" mode="M521"/></axsl:template>

<!--PATTERN unix-def_sccs_objectfilename-->


	<!--RULE -->
<axsl:template match="unix-def:sccs_object/unix-def:filename" priority="1000" mode="M522">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or not(.='') or (.='' and @operation = 'pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M522"/></axsl:template><axsl:template match="text()" priority="-1" mode="M522"/><axsl:template match="@*|node()" priority="-2" mode="M522"><axsl:apply-templates select="@*|*" mode="M522"/></axsl:template>

<!--PATTERN unix-def_sccsste_dep-->


	<!--RULE -->
<axsl:template match="unix-def:sccs_state" priority="1000" mode="M523">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M523"/></axsl:template><axsl:template match="text()" priority="-1" mode="M523"/><axsl:template match="@*|node()" priority="-2" mode="M523"><axsl:apply-templates select="@*|*" mode="M523"/></axsl:template>

<!--PATTERN unix-def_shadowtst-->


	<!--RULE -->
<axsl:template match="unix-def:shadow_test/unix-def:object" priority="1001" mode="M524">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:shadow_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a shadow_test must reference a shadow_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M524"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:shadow_test/unix-def:state" priority="1000" mode="M524">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:shadow_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a shadow_test must reference a shadow_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M524"/></axsl:template><axsl:template match="text()" priority="-1" mode="M524"/><axsl:template match="@*|node()" priority="-2" mode="M524"><axsl:apply-templates select="@*|*" mode="M524"/></axsl:template>

<!--PATTERN unix-def_shadow_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:shadow_object//oval-def:filter" priority="1000" mode="M525"><axsl:variable name="parent_object" select="ancestor::unix-def:shadow_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='shadow_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M525"/></axsl:template><axsl:template match="text()" priority="-1" mode="M525"/><axsl:template match="@*|node()" priority="-2" mode="M525"><axsl:apply-templates select="@*|*" mode="M525"/></axsl:template>

<!--PATTERN unix-def_symlinktst-->


	<!--RULE -->
<axsl:template match="unix-def:symlink_test/unix-def:object" priority="1001" mode="M526">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:symlink_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a symlink_test must reference a symlink_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M526"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:symlink_test/unix-def:state" priority="1000" mode="M526">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:symlink_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a symlink_test must reference a symlink_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M526"/></axsl:template><axsl:template match="text()" priority="-1" mode="M526"/><axsl:template match="@*|node()" priority="-2" mode="M526"><axsl:apply-templates select="@*|*" mode="M526"/></axsl:template>

<!--PATTERN unix-def_symlink_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:symlink_object//oval-def:filter" priority="1000" mode="M527"><axsl:variable name="parent_object" select="ancestor::unix-def:symlink_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='symlink_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M527"/></axsl:template><axsl:template match="text()" priority="-1" mode="M527"/><axsl:template match="@*|node()" priority="-2" mode="M527"><axsl:apply-templates select="@*|*" mode="M527"/></axsl:template>

<!--PATTERN unix-def_sysctltst-->


	<!--RULE -->
<axsl:template match="unix-def:sysctl_test/unix-def:object" priority="1001" mode="M528">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:sysctl_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a sysctl_test must reference a sysctl_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M528"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:sysctl_test/unix-def:state" priority="1000" mode="M528">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:sysctl_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a sysctl_test must reference a sysctl_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M528"/></axsl:template><axsl:template match="text()" priority="-1" mode="M528"/><axsl:template match="@*|node()" priority="-2" mode="M528"><axsl:apply-templates select="@*|*" mode="M528"/></axsl:template>

<!--PATTERN unix-def_sysctl_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:sysctl_object//oval-def:filter" priority="1000" mode="M529"><axsl:variable name="parent_object" select="ancestor::unix-def:sysctl_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='sysctl_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M529"/></axsl:template><axsl:template match="text()" priority="-1" mode="M529"/><axsl:template match="@*|node()" priority="-2" mode="M529"><axsl:apply-templates select="@*|*" mode="M529"/></axsl:template>

<!--PATTERN unix-def_unametst-->


	<!--RULE -->
<axsl:template match="unix-def:uname_test/unix-def:object" priority="1001" mode="M530">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:uname_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a uname_test must reference a uname_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M530"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:uname_test/unix-def:state" priority="1000" mode="M530">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:uname_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a uname_test must reference a uname_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M530"/></axsl:template><axsl:template match="text()" priority="-1" mode="M530"/><axsl:template match="@*|node()" priority="-2" mode="M530"><axsl:apply-templates select="@*|*" mode="M530"/></axsl:template>

<!--PATTERN unix-def_xinetdtst-->


	<!--RULE -->
<axsl:template match="unix-def:xinetd_test/unix-def:object" priority="1001" mode="M531">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:xinetd_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a xinetd_test must reference a xinetd_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M531"/></axsl:template>

	<!--RULE -->
<axsl:template match="unix-def:xinetd_test/unix-def:state" priority="1000" mode="M531">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:xinetd_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a xinetd_test must reference a xinetd_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M531"/></axsl:template><axsl:template match="text()" priority="-1" mode="M531"/><axsl:template match="@*|node()" priority="-2" mode="M531"><axsl:apply-templates select="@*|*" mode="M531"/></axsl:template>

<!--PATTERN unix-def_xinetd_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="unix-def:xinetd_object//oval-def:filter" priority="1000" mode="M532"><axsl:variable name="parent_object" select="ancestor::unix-def:xinetd_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#unix') and ($state_name='xinetd_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M532"/></axsl:template><axsl:template match="text()" priority="-1" mode="M532"/><axsl:template match="@*|node()" priority="-2" mode="M532"><axsl:apply-templates select="@*|*" mode="M532"/></axsl:template>

<!--PATTERN win-def_accesstokentst_dep-->


	<!--RULE -->
<axsl:template match="win-def:accesstoken_test" priority="1000" mode="M533">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M533"/></axsl:template><axsl:template match="text()" priority="-1" mode="M533"/><axsl:template match="@*|node()" priority="-2" mode="M533"><axsl:apply-templates select="@*|*" mode="M533"/></axsl:template>

<!--PATTERN win-def_attst-->


	<!--RULE -->
<axsl:template match="win-def:accesstoken_test/win-def:object" priority="1001" mode="M534">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:accesstoken_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an accesstoken_test must reference an accesstoken_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M534"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:accesstoken_test/win-def:state" priority="1000" mode="M534">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:accesstoken_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an accesstoken_test must reference an accesstoken_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M534"/></axsl:template><axsl:template match="text()" priority="-1" mode="M534"/><axsl:template match="@*|node()" priority="-2" mode="M534"><axsl:apply-templates select="@*|*" mode="M534"/></axsl:template>

<!--PATTERN win-def_accesstokenobj_dep-->


	<!--RULE -->
<axsl:template match="win-def:accesstoken_object" priority="1000" mode="M535">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M535"/></axsl:template><axsl:template match="text()" priority="-1" mode="M535"/><axsl:template match="@*|node()" priority="-2" mode="M535"><axsl:apply-templates select="@*|*" mode="M535"/></axsl:template>

<!--PATTERN win-def_accesstoken_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:accesstoken_object//oval-def:filter" priority="1000" mode="M536"><axsl:variable name="parent_object" select="ancestor::win-def:accesstoken_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='accesstoken_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M536"/></axsl:template><axsl:template match="text()" priority="-1" mode="M536"/><axsl:template match="@*|node()" priority="-2" mode="M536"><axsl:apply-templates select="@*|*" mode="M536"/></axsl:template>

<!--PATTERN win-def_accesstokenste_dep-->


	<!--RULE -->
<axsl:template match="win-def:accesstoken_state" priority="1000" mode="M537">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M537"/></axsl:template><axsl:template match="text()" priority="-1" mode="M537"/><axsl:template match="@*|node()" priority="-2" mode="M537"><axsl:apply-templates select="@*|*" mode="M537"/></axsl:template>

<!--PATTERN win-def_at_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:accesstoken_object/win-def:behaviors" priority="1000" mode="M538">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:accesstoken_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M538"/></axsl:template><axsl:template match="text()" priority="-1" mode="M538"/><axsl:template match="@*|node()" priority="-2" mode="M538"><axsl:apply-templates select="@*|*" mode="M538"/></axsl:template>

<!--PATTERN win-def_at_resolve_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:accesstoken_object/win-def:behaviors" priority="1000" mode="M539">

		<!--REPORT -->
<axsl:if test="@resolve_group">DEPRECATED BEHAVIOR IN: win-def:accesstoken_object <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M539"/></axsl:template><axsl:template match="text()" priority="-1" mode="M539"/><axsl:template match="@*|node()" priority="-2" mode="M539"><axsl:apply-templates select="@*|*" mode="M539"/></axsl:template>

<!--PATTERN win-def_adtst-->


	<!--RULE -->
<axsl:template match="win-def:activedirectory_test/win-def:object" priority="1001" mode="M540">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:activedirectory_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an activedirectory_test must reference an activedirectory_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M540"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:activedirectory_test/win-def:state" priority="1000" mode="M540">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:activedirectory_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an activedirectory_test must reference an activedirectory_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M540"/></axsl:template><axsl:template match="text()" priority="-1" mode="M540"/><axsl:template match="@*|node()" priority="-2" mode="M540"><axsl:apply-templates select="@*|*" mode="M540"/></axsl:template>

<!--PATTERN win-def_activedirectory57tst_dep-->


	<!--RULE -->
<axsl:template match="win-def:activedirectory57_test" priority="1000" mode="M541">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M541"/></axsl:template><axsl:template match="text()" priority="-1" mode="M541"/><axsl:template match="@*|node()" priority="-2" mode="M541"><axsl:apply-templates select="@*|*" mode="M541"/></axsl:template>

<!--PATTERN win-def_activedirectory57_test-->


	<!--RULE -->
<axsl:template match="win-def:activedirectory57_test/win-def:object" priority="1001" mode="M542">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:activedirectory57_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an activedirectory57_test must reference an activedirectory57_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M542"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:activedirectory57_test/win-def:state" priority="1000" mode="M542">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:activedirectory57_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an activedirectory57_test must reference an activedirectory57_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M542"/></axsl:template><axsl:template match="text()" priority="-1" mode="M542"/><axsl:template match="@*|node()" priority="-2" mode="M542"><axsl:apply-templates select="@*|*" mode="M542"/></axsl:template>

<!--PATTERN win-def_activedirectory57_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:activedirectory57_object//oval-def:filter" priority="1000" mode="M543"><axsl:variable name="parent_object" select="ancestor::win-def:activedirectory57_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='activedirectory57_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M543"/></axsl:template><axsl:template match="text()" priority="-1" mode="M543"/><axsl:template match="@*|node()" priority="-2" mode="M543"><axsl:apply-templates select="@*|*" mode="M543"/></axsl:template>

<!--PATTERN win-def_activedirectory57obj_dep-->


	<!--RULE -->
<axsl:template match="win-def:activedirectory57_object" priority="1000" mode="M544">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M544"/></axsl:template><axsl:template match="text()" priority="-1" mode="M544"/><axsl:template match="@*|node()" priority="-2" mode="M544"><axsl:apply-templates select="@*|*" mode="M544"/></axsl:template>

<!--PATTERN win-def_activedirectory57ste_dep-->


	<!--RULE -->
<axsl:template match="win-def:activedirectory57_state" priority="1000" mode="M545">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M545"/></axsl:template><axsl:template match="text()" priority="-1" mode="M545"/><axsl:template match="@*|node()" priority="-2" mode="M545"><axsl:apply-templates select="@*|*" mode="M545"/></axsl:template>

<!--PATTERN win-def_ad57stevalue-->


	<!--RULE -->
<axsl:template match="win-def:activedirectory57_state/win-def:value" priority="1000" mode="M546">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the value entity of a activedirectory57_state must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M546"/></axsl:template><axsl:template match="text()" priority="-1" mode="M546"/><axsl:template match="@*|node()" priority="-2" mode="M546"><axsl:apply-templates select="@*|*" mode="M546"/></axsl:template>

<!--PATTERN win-def_aeptst-->


	<!--RULE -->
<axsl:template match="win-def:auditeventpolicy_test/win-def:object" priority="1001" mode="M547">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:auditeventpolicy_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an auditeventpolicy_test must reference an auditeventpolicy_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M547"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:auditeventpolicy_test/win-def:state" priority="1000" mode="M547">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:auditeventpolicy_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an auditeventpolicy_test must reference an auditeventpolicy_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M547"/></axsl:template><axsl:template match="text()" priority="-1" mode="M547"/><axsl:template match="@*|node()" priority="-2" mode="M547"><axsl:apply-templates select="@*|*" mode="M547"/></axsl:template>

<!--PATTERN win-def_aepstst-->


	<!--RULE -->
<axsl:template match="win-def:auditeventpolicysubcategories_test/win-def:object" priority="1001" mode="M548">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:auditeventpolicysubcategories_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an auditeventpolicysubcategories_test must reference an auditeventpolicysubcategories_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M548"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:auditeventpolicysubcategories_test/win-def:state" priority="1000" mode="M548">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:auditeventpolicysubcategories_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an auditeventpolicysubcategories_test must reference an auditeventpolicysubcategories_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M548"/></axsl:template><axsl:template match="text()" priority="-1" mode="M548"/><axsl:template match="@*|node()" priority="-2" mode="M548"><axsl:apply-templates select="@*|*" mode="M548"/></axsl:template>

<!--PATTERN win-def_auditeventpolicysubcategoriesstatekerberos_ticket_events-->


	<!--RULE -->
<axsl:template match="win-def:auditeventpolicysubcategories_state/win-def:kerberos_ticket_events" priority="1000" mode="M549">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M549"/></axsl:template><axsl:template match="text()" priority="-1" mode="M549"/><axsl:template match="@*|node()" priority="-2" mode="M549"><axsl:apply-templates select="@*|*" mode="M549"/></axsl:template>

<!--PATTERN win-def_cmdlet_test-->


	<!--RULE -->
<axsl:template match="win-def:cmdlet_test/win-def:object" priority="1001" mode="M550">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:cmdlet_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a cmdlet_test must reference a cmdlet_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M550"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:cmdlet_test/win-def:state" priority="1000" mode="M550">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:cmdlet_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a cmdlet_test must reference a cmdlet_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M550"/></axsl:template><axsl:template match="text()" priority="-1" mode="M550"/><axsl:template match="@*|node()" priority="-2" mode="M550"><axsl:apply-templates select="@*|*" mode="M550"/></axsl:template>

<!--PATTERN win-def_cmdlet_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:cmdlet_object//oval-def:filter" priority="1000" mode="M551"><axsl:variable name="parent_object" select="ancestor::win-def:cmdlet_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='cmdlet_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M551"/></axsl:template><axsl:template match="text()" priority="-1" mode="M551"/><axsl:template match="@*|node()" priority="-2" mode="M551"><axsl:apply-templates select="@*|*" mode="M551"/></axsl:template>

<!--PATTERN win-def_cmdletobjmodule_name-->


	<!--RULE -->
<axsl:template match="win-def:cmdlet_object/win-def:module_name" priority="1000" mode="M552">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the module_name entity of a cmdlet_object must be 'equals'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M552"/></axsl:template><axsl:template match="text()" priority="-1" mode="M552"/><axsl:template match="@*|node()" priority="-2" mode="M552"><axsl:apply-templates select="@*|*" mode="M552"/></axsl:template>

<!--PATTERN win-def_cmdletobjmodule_id-->


	<!--RULE -->
<axsl:template match="win-def:cmdlet_object/win-def:module_id" priority="1000" mode="M553">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the module_id entity of a cmdlet_object must be 'equals'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M553"/></axsl:template><axsl:template match="text()" priority="-1" mode="M553"/><axsl:template match="@*|node()" priority="-2" mode="M553"><axsl:apply-templates select="@*|*" mode="M553"/></axsl:template>

<!--PATTERN win-def_cmdletobjverb-->


	<!--RULE -->
<axsl:template match="win-def:cmdlet_object/win-def:verb" priority="1000" mode="M554">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the verb entity of a cmdlet_object must be 'equals'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M554"/></axsl:template><axsl:template match="text()" priority="-1" mode="M554"/><axsl:template match="@*|node()" priority="-2" mode="M554"><axsl:apply-templates select="@*|*" mode="M554"/></axsl:template>

<!--PATTERN win-def_cmdletobjnoun-->


	<!--RULE -->
<axsl:template match="win-def:cmdlet_object/win-def:noun" priority="1000" mode="M555">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the noun entity of a cmdlet_object must be 'equals'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M555"/></axsl:template><axsl:template match="text()" priority="-1" mode="M555"/><axsl:template match="@*|node()" priority="-2" mode="M555"><axsl:apply-templates select="@*|*" mode="M555"/></axsl:template>

<!--PATTERN win-def_cmdletobjparameters-->


	<!--RULE -->
<axsl:template match="win-def:cmdlet_object/win-def:parameters" priority="1000" mode="M556">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the parameters entity of a cmdlet_object must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M556"/></axsl:template><axsl:template match="text()" priority="-1" mode="M556"/><axsl:template match="@*|node()" priority="-2" mode="M556"><axsl:apply-templates select="@*|*" mode="M556"/></axsl:template>

<!--PATTERN win-def_cmdletobjselect-->


	<!--RULE -->
<axsl:template match="win-def:cmdlet_object/win-def:select" priority="1000" mode="M557">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the select entity of a cmdlet_object must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M557"/></axsl:template><axsl:template match="text()" priority="-1" mode="M557"/><axsl:template match="@*|node()" priority="-2" mode="M557"><axsl:apply-templates select="@*|*" mode="M557"/></axsl:template>

<!--PATTERN win-def_cmdletsteparameters-->


	<!--RULE -->
<axsl:template match="win-def:cmdlet_state/win-def:parameters" priority="1000" mode="M558">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the parameters entity of a cmdlet_state must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M558"/></axsl:template><axsl:template match="text()" priority="-1" mode="M558"/><axsl:template match="@*|node()" priority="-2" mode="M558"><axsl:apply-templates select="@*|*" mode="M558"/></axsl:template>

<!--PATTERN win-def_cmdletsteselect-->


	<!--RULE -->
<axsl:template match="win-def:cmdlet_state/win-def:select" priority="1000" mode="M559">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the select entity of a cmdlet_state must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M559"/></axsl:template><axsl:template match="text()" priority="-1" mode="M559"/><axsl:template match="@*|node()" priority="-2" mode="M559"><axsl:apply-templates select="@*|*" mode="M559"/></axsl:template>

<!--PATTERN win-def_cmdletstevalue-->


	<!--RULE -->
<axsl:template match="win-def:cmdlet_state/win-def:value" priority="1000" mode="M560">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the value entity of a cmdlet_state must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M560"/></axsl:template><axsl:template match="text()" priority="-1" mode="M560"/><axsl:template match="@*|node()" priority="-2" mode="M560"><axsl:apply-templates select="@*|*" mode="M560"/></axsl:template>

<!--PATTERN win-def_dnscachetst-->


	<!--RULE -->
<axsl:template match="win-def:dnscache_test/win-def:object" priority="1001" mode="M561">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:dnscache_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a dnscache_test must reference a dnscache_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M561"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:dnscache_test/win-def:state" priority="1000" mode="M561">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:dnscache_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a dnscache_test must reference a dnscache_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M561"/></axsl:template><axsl:template match="text()" priority="-1" mode="M561"/><axsl:template match="@*|node()" priority="-2" mode="M561"><axsl:apply-templates select="@*|*" mode="M561"/></axsl:template>

<!--PATTERN win-def_dnscache_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:dnscache_object//oval-def:filter" priority="1000" mode="M562"><axsl:variable name="parent_object" select="ancestor::win-def:dnscache_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='dnscache_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M562"/></axsl:template><axsl:template match="text()" priority="-1" mode="M562"/><axsl:template match="@*|node()" priority="-2" mode="M562"><axsl:apply-templates select="@*|*" mode="M562"/></axsl:template>

<!--PATTERN win-def_filetst-->


	<!--RULE -->
<axsl:template match="win-def:file_test/win-def:object" priority="1001" mode="M563">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:file_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a file_test must reference a file_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M563"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:file_test/win-def:state" priority="1000" mode="M563">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:file_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a file_test must reference a file_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M563"/></axsl:template><axsl:template match="text()" priority="-1" mode="M563"/><axsl:template match="@*|node()" priority="-2" mode="M563"><axsl:apply-templates select="@*|*" mode="M563"/></axsl:template>

<!--PATTERN win-def_file_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:file_object//oval-def:filter" priority="1000" mode="M564"><axsl:variable name="parent_object" select="ancestor::win-def:file_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='file_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M564"/></axsl:template><axsl:template match="text()" priority="-1" mode="M564"/><axsl:template match="@*|node()" priority="-2" mode="M564"><axsl:apply-templates select="@*|*" mode="M564"/></axsl:template>

<!--PATTERN win-def_fileobjfilepath-->


	<!--RULE -->
<axsl:template match="win-def:file_object/win-def:filepath" priority="1000" mode="M565">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M565"/></axsl:template><axsl:template match="text()" priority="-1" mode="M565"/><axsl:template match="@*|node()" priority="-2" mode="M565"><axsl:apply-templates select="@*|*" mode="M565"/></axsl:template>

<!--PATTERN win-def_fileobjfilepath2-->


	<!--RULE -->
<axsl:template match="win-def:file_object/win-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M566">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M566"/></axsl:template><axsl:template match="text()" priority="-1" mode="M566"/><axsl:template match="@*|node()" priority="-2" mode="M566"><axsl:apply-templates select="@*|*" mode="M566"/></axsl:template>

<!--PATTERN win-def_fileobjpath-->


	<!--RULE -->
<axsl:template match="win-def:file_object/win-def:path[not(@operation='equals' or not(@operation))]" priority="1000" mode="M567">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M567"/></axsl:template><axsl:template match="text()" priority="-1" mode="M567"/><axsl:template match="@*|node()" priority="-2" mode="M567"><axsl:apply-templates select="@*|*" mode="M567"/></axsl:template>

<!--PATTERN win-def_fileobjfilename-->


	<!--RULE -->
<axsl:template match="win-def:file_object/win-def:filename" priority="1000" mode="M568">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or ((@xsi:nil='1' or @xsi:nil='true') and .='') or not(@var_ref)"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M568"/></axsl:template><axsl:template match="text()" priority="-1" mode="M568"/><axsl:template match="@*|node()" priority="-2" mode="M568"><axsl:apply-templates select="@*|*" mode="M568"/></axsl:template>

<!--PATTERN win-def_filestefilename-->


	<!--RULE -->
<axsl:template match="win-def:file_state/win-def:filename" priority="1000" mode="M569">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M569"/></axsl:template><axsl:template match="text()" priority="-1" mode="M569"/><axsl:template match="@*|node()" priority="-2" mode="M569"><axsl:apply-templates select="@*|*" mode="M569"/></axsl:template>

<!--PATTERN win-def_fap53tst-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions53_test/win-def:object" priority="1001" mode="M570">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions53_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a fileauditedpermissions53_test must reference a fileauditedpermissions53_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M570"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions53_test/win-def:state" priority="1000" mode="M570">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileauditedpermissions53_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a fileauditedpermissions53_test must reference a fileauditedpermissions53_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M570"/></axsl:template><axsl:template match="text()" priority="-1" mode="M570"/><axsl:template match="@*|node()" priority="-2" mode="M570"><axsl:apply-templates select="@*|*" mode="M570"/></axsl:template>

<!--PATTERN win-def_fileauditedpermissions53_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions53_object//oval-def:filter" priority="1000" mode="M571"><axsl:variable name="parent_object" select="ancestor::win-def:fileauditedpermissions53_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='fileauditedpermissions53_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M571"/></axsl:template><axsl:template match="text()" priority="-1" mode="M571"/><axsl:template match="@*|node()" priority="-2" mode="M571"><axsl:apply-templates select="@*|*" mode="M571"/></axsl:template>

<!--PATTERN win-def_fap53objfilepath-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions53_object/win-def:filepath" priority="1000" mode="M572">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M572"/></axsl:template><axsl:template match="text()" priority="-1" mode="M572"/><axsl:template match="@*|node()" priority="-2" mode="M572"><axsl:apply-templates select="@*|*" mode="M572"/></axsl:template>

<!--PATTERN win-def_fap53objfilepath2-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions53_object/win-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M573">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M573"/></axsl:template><axsl:template match="text()" priority="-1" mode="M573"/><axsl:template match="@*|node()" priority="-2" mode="M573"><axsl:apply-templates select="@*|*" mode="M573"/></axsl:template>

<!--PATTERN win-def_fap53objpath-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions53_object/win-def:path[not(@operation='equals' or not(@operation))]" priority="1000" mode="M574">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M574"/></axsl:template><axsl:template match="text()" priority="-1" mode="M574"/><axsl:template match="@*|node()" priority="-2" mode="M574"><axsl:apply-templates select="@*|*" mode="M574"/></axsl:template>

<!--PATTERN win-def_fap53objfilename-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions53_object/win-def:filename" priority="1000" mode="M575">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or ((@xsi:nil='1' or @xsi:nil='true') and .='') or not(.='') or (.='' and @operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M575"/></axsl:template><axsl:template match="text()" priority="-1" mode="M575"/><axsl:template match="@*|node()" priority="-2" mode="M575"><axsl:apply-templates select="@*|*" mode="M575"/></axsl:template>

<!--PATTERN win-def_fap53stefilename-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions53_state/win-def:filename" priority="1000" mode="M576">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M576"/></axsl:template><axsl:template match="text()" priority="-1" mode="M576"/><axsl:template match="@*|node()" priority="-2" mode="M576"><axsl:apply-templates select="@*|*" mode="M576"/></axsl:template>

<!--PATTERN win-def_fap53_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions53_object/win-def:behaviors" priority="1000" mode="M577">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:fileauditedpermissions53_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M577"/></axsl:template><axsl:template match="text()" priority="-1" mode="M577"/><axsl:template match="@*|node()" priority="-2" mode="M577"><axsl:apply-templates select="@*|*" mode="M577"/></axsl:template>

<!--PATTERN win-def_fap53_resolve_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions53_object/win-def:behaviors" priority="1000" mode="M578">

		<!--REPORT -->
<axsl:if test="@resolve_group">DEPRECATED BEHAVIOR IN: fileauditedpermissions53_object <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M578"/></axsl:template><axsl:template match="text()" priority="-1" mode="M578"/><axsl:template match="@*|node()" priority="-2" mode="M578"><axsl:apply-templates select="@*|*" mode="M578"/></axsl:template>

<!--PATTERN win-def_faptst_dep-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions_test" priority="1000" mode="M579">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M579"/></axsl:template><axsl:template match="text()" priority="-1" mode="M579"/><axsl:template match="@*|node()" priority="-2" mode="M579"><axsl:apply-templates select="@*|*" mode="M579"/></axsl:template>

<!--PATTERN win-def_faptst-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions_test/win-def:object" priority="1001" mode="M580">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a fileauditedpermissions_test must reference a fileauditedpermissions_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M580"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions_test/win-def:state" priority="1000" mode="M580">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileauditedpermissions_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a fileauditedpermissions_test must reference a fileauditedpermissions_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M580"/></axsl:template><axsl:template match="text()" priority="-1" mode="M580"/><axsl:template match="@*|node()" priority="-2" mode="M580"><axsl:apply-templates select="@*|*" mode="M580"/></axsl:template>

<!--PATTERN win-def_fapobj_dep-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions_object" priority="1000" mode="M581">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M581"/></axsl:template><axsl:template match="text()" priority="-1" mode="M581"/><axsl:template match="@*|node()" priority="-2" mode="M581"><axsl:apply-templates select="@*|*" mode="M581"/></axsl:template>

<!--PATTERN win-def_fapobjfilename-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions_object/win-def:filename" priority="1000" mode="M582">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or ((@xsi:nil='1' or @xsi:nil='true') and .='') or not(.='') or (.='' and @operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M582"/></axsl:template><axsl:template match="text()" priority="-1" mode="M582"/><axsl:template match="@*|node()" priority="-2" mode="M582"><axsl:apply-templates select="@*|*" mode="M582"/></axsl:template>

<!--PATTERN win-def_fapste_dep-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions_state" priority="1000" mode="M583">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M583"/></axsl:template><axsl:template match="text()" priority="-1" mode="M583"/><axsl:template match="@*|node()" priority="-2" mode="M583"><axsl:apply-templates select="@*|*" mode="M583"/></axsl:template>

<!--PATTERN win-def_fapstefilename-->


	<!--RULE -->
<axsl:template match="win-def:fileauditedpermissions_state/win-def:filename" priority="1000" mode="M584">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M584"/></axsl:template><axsl:template match="text()" priority="-1" mode="M584"/><axsl:template match="@*|node()" priority="-2" mode="M584"><axsl:apply-templates select="@*|*" mode="M584"/></axsl:template>

<!--PATTERN win-def_fap_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions_object/win-def:behaviors" priority="1000" mode="M585">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:fileauditedpermissions_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M585"/></axsl:template><axsl:template match="text()" priority="-1" mode="M585"/><axsl:template match="@*|node()" priority="-2" mode="M585"><axsl:apply-templates select="@*|*" mode="M585"/></axsl:template>

<!--PATTERN win-def_fap_resolve_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions_object/win-def:behaviors" priority="1000" mode="M586">

		<!--REPORT -->
<axsl:if test="@resolve_group">DEPRECATED BEHAVIOR IN: fileauditedpermissions_object <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M586"/></axsl:template><axsl:template match="text()" priority="-1" mode="M586"/><axsl:template match="@*|node()" priority="-2" mode="M586"><axsl:apply-templates select="@*|*" mode="M586"/></axsl:template>

<!--PATTERN win-def_fer53tst-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights53_test/win-def:object" priority="1001" mode="M587">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights53_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a fileeffectiverights53_test must reference a fileeffectiverights53_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M587"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights53_test/win-def:state" priority="1000" mode="M587">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileeffectiverights53_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a fileeffectiverights53_test must reference a fileeffectiverights53_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M587"/></axsl:template><axsl:template match="text()" priority="-1" mode="M587"/><axsl:template match="@*|node()" priority="-2" mode="M587"><axsl:apply-templates select="@*|*" mode="M587"/></axsl:template>

<!--PATTERN win-def_fileeffectiverights53_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights53_object//oval-def:filter" priority="1000" mode="M588"><axsl:variable name="parent_object" select="ancestor::win-def:fileeffectiverights53_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='fileeffectiverights53_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M588"/></axsl:template><axsl:template match="text()" priority="-1" mode="M588"/><axsl:template match="@*|node()" priority="-2" mode="M588"><axsl:apply-templates select="@*|*" mode="M588"/></axsl:template>

<!--PATTERN win-def_fer53objfilepath-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights53_object/win-def:filepath" priority="1000" mode="M589">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M589"/></axsl:template><axsl:template match="text()" priority="-1" mode="M589"/><axsl:template match="@*|node()" priority="-2" mode="M589"><axsl:apply-templates select="@*|*" mode="M589"/></axsl:template>

<!--PATTERN win-def_fer53objfilepath2-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights53_object/win-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M590">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M590"/></axsl:template><axsl:template match="text()" priority="-1" mode="M590"/><axsl:template match="@*|node()" priority="-2" mode="M590"><axsl:apply-templates select="@*|*" mode="M590"/></axsl:template>

<!--PATTERN win-def_fer53objpath-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights53_object/win-def:path[not(@operation='equals' or not(@operation))]" priority="1000" mode="M591">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M591"/></axsl:template><axsl:template match="text()" priority="-1" mode="M591"/><axsl:template match="@*|node()" priority="-2" mode="M591"><axsl:apply-templates select="@*|*" mode="M591"/></axsl:template>

<!--PATTERN win-def_fer53objfilename-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights53_object/win-def:filename" priority="1000" mode="M592">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or ((@xsi:nil='1' or @xsi:nil='true') and .='') or not(.='') or (.='' and @operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M592"/></axsl:template><axsl:template match="text()" priority="-1" mode="M592"/><axsl:template match="@*|node()" priority="-2" mode="M592"><axsl:apply-templates select="@*|*" mode="M592"/></axsl:template>

<!--PATTERN win-def_fer53stefilename-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights53_state/win-def:filename" priority="1000" mode="M593">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M593"/></axsl:template><axsl:template match="text()" priority="-1" mode="M593"/><axsl:template match="@*|node()" priority="-2" mode="M593"><axsl:apply-templates select="@*|*" mode="M593"/></axsl:template>

<!--PATTERN win-def_ffr53_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights53_object/win-def:behaviors" priority="1000" mode="M594">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:fileeffectiverights53_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M594"/></axsl:template><axsl:template match="text()" priority="-1" mode="M594"/><axsl:template match="@*|node()" priority="-2" mode="M594"><axsl:apply-templates select="@*|*" mode="M594"/></axsl:template>

<!--PATTERN win-def_ffr53_resolve_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights53_object/win-def:behaviors" priority="1000" mode="M595">

		<!--REPORT -->
<axsl:if test="@resolve_group">DEPRECATED BEHAVIOR IN: fileeffectiverights53_object <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M595"/></axsl:template><axsl:template match="text()" priority="-1" mode="M595"/><axsl:template match="@*|node()" priority="-2" mode="M595"><axsl:apply-templates select="@*|*" mode="M595"/></axsl:template>

<!--PATTERN win-def_fertst_dep-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights_test" priority="1000" mode="M596">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M596"/></axsl:template><axsl:template match="text()" priority="-1" mode="M596"/><axsl:template match="@*|node()" priority="-2" mode="M596"><axsl:apply-templates select="@*|*" mode="M596"/></axsl:template>

<!--PATTERN win-def_fertst-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights_test/win-def:object" priority="1001" mode="M597">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a fileeffectiverights_test must reference a fileeffectiverights_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M597"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights_test/win-def:state" priority="1000" mode="M597">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileeffectiverights_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a fileeffectiverights_test must reference a fileeffectiverights_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M597"/></axsl:template><axsl:template match="text()" priority="-1" mode="M597"/><axsl:template match="@*|node()" priority="-2" mode="M597"><axsl:apply-templates select="@*|*" mode="M597"/></axsl:template>

<!--PATTERN win-def_ferobj_dep-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights_object" priority="1000" mode="M598">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M598"/></axsl:template><axsl:template match="text()" priority="-1" mode="M598"/><axsl:template match="@*|node()" priority="-2" mode="M598"><axsl:apply-templates select="@*|*" mode="M598"/></axsl:template>

<!--PATTERN win-def_fefobjfilename-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights_object/win-def:filename" priority="1000" mode="M599">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(@var_ref and .='') or ((@xsi:nil='1' or @xsi:nil='true') and .='') or not(.='') or (.='' and @operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M599"/></axsl:template><axsl:template match="text()" priority="-1" mode="M599"/><axsl:template match="@*|node()" priority="-2" mode="M599"><axsl:apply-templates select="@*|*" mode="M599"/></axsl:template>

<!--PATTERN win-def_ferste_dep-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights_state" priority="1000" mode="M600">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M600"/></axsl:template><axsl:template match="text()" priority="-1" mode="M600"/><axsl:template match="@*|node()" priority="-2" mode="M600"><axsl:apply-templates select="@*|*" mode="M600"/></axsl:template>

<!--PATTERN win-def_ferstefilename-->


	<!--RULE -->
<axsl:template match="win-def:fileeffectiverights_state/win-def:filename" priority="1000" mode="M601">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M601"/></axsl:template><axsl:template match="text()" priority="-1" mode="M601"/><axsl:template match="@*|node()" priority="-2" mode="M601"><axsl:apply-templates select="@*|*" mode="M601"/></axsl:template>

<!--PATTERN win-def_ffr_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights_object/win-def:behaviors" priority="1000" mode="M602">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:fileeffectiverights_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M602"/></axsl:template><axsl:template match="text()" priority="-1" mode="M602"/><axsl:template match="@*|node()" priority="-2" mode="M602"><axsl:apply-templates select="@*|*" mode="M602"/></axsl:template>

<!--PATTERN win-def_ffr_resolve_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights_object/win-def:behaviors" priority="1000" mode="M603">

		<!--REPORT -->
<axsl:if test="@resolve_group">DEPRECATED BEHAVIOR IN: fileeffectiverights_object <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M603"/></axsl:template><axsl:template match="text()" priority="-1" mode="M603"/><axsl:template match="@*|node()" priority="-2" mode="M603"><axsl:apply-templates select="@*|*" mode="M603"/></axsl:template>

<!--PATTERN win-def_grouptst_dep-->


	<!--RULE -->
<axsl:template match="win-def:group_test" priority="1000" mode="M604">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M604"/></axsl:template><axsl:template match="text()" priority="-1" mode="M604"/><axsl:template match="@*|node()" priority="-2" mode="M604"><axsl:apply-templates select="@*|*" mode="M604"/></axsl:template>

<!--PATTERN win-def_grouptst-->


	<!--RULE -->
<axsl:template match="win-def:group_test/win-def:object" priority="1001" mode="M605">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:group_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a group_test must reference a group_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M605"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:group_test/win-def:state" priority="1000" mode="M605">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:group_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a group_test must reference a group_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M605"/></axsl:template><axsl:template match="text()" priority="-1" mode="M605"/><axsl:template match="@*|node()" priority="-2" mode="M605"><axsl:apply-templates select="@*|*" mode="M605"/></axsl:template>

<!--PATTERN win-def_groupobj_dep-->


	<!--RULE -->
<axsl:template match="win-def:group_object" priority="1000" mode="M606">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M606"/></axsl:template><axsl:template match="text()" priority="-1" mode="M606"/><axsl:template match="@*|node()" priority="-2" mode="M606"><axsl:apply-templates select="@*|*" mode="M606"/></axsl:template>

<!--PATTERN win-def_group_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:group_object//oval-def:filter" priority="1000" mode="M607"><axsl:variable name="parent_object" select="ancestor::win-def:group_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='group_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M607"/></axsl:template><axsl:template match="text()" priority="-1" mode="M607"/><axsl:template match="@*|node()" priority="-2" mode="M607"><axsl:apply-templates select="@*|*" mode="M607"/></axsl:template>

<!--PATTERN win-def_groupste_dep-->


	<!--RULE -->
<axsl:template match="win-def:group_state" priority="1000" mode="M608">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M608"/></axsl:template><axsl:template match="text()" priority="-1" mode="M608"/><axsl:template match="@*|node()" priority="-2" mode="M608"><axsl:apply-templates select="@*|*" mode="M608"/></axsl:template>

<!--PATTERN win-def_groupsidtst-->


	<!--RULE -->
<axsl:template match="win-def:group_sid_test/win-def:object" priority="1001" mode="M609">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:group_sid_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a group_sid_test must reference a group_sid_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M609"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:group_sid_test/win-def:state" priority="1000" mode="M609">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:group_sid_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a group_sid_test must reference a group_sid_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M609"/></axsl:template><axsl:template match="text()" priority="-1" mode="M609"/><axsl:template match="@*|node()" priority="-2" mode="M609"><axsl:apply-templates select="@*|*" mode="M609"/></axsl:template>

<!--PATTERN win-def_group_sid_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:group_sid_object//oval-def:filter" priority="1000" mode="M610"><axsl:variable name="parent_object" select="ancestor::win-def:group_sid_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='group_sid_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M610"/></axsl:template><axsl:template match="text()" priority="-1" mode="M610"/><axsl:template match="@*|node()" priority="-2" mode="M610"><axsl:apply-templates select="@*|*" mode="M610"/></axsl:template>

<!--PATTERN win-def_wininterfacetst-->


	<!--RULE -->
<axsl:template match="win-def:interface_test/win-def:object" priority="1001" mode="M611">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:interface_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of an interface_test must reference an interface_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M611"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:interface_test/win-def:state" priority="1000" mode="M611">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:interface_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of an interface_test must reference an interface_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M611"/></axsl:template><axsl:template match="text()" priority="-1" mode="M611"/><axsl:template match="@*|node()" priority="-2" mode="M611"><axsl:apply-templates select="@*|*" mode="M611"/></axsl:template>

<!--PATTERN win-def_interface_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:interface_object//oval-def:filter" priority="1000" mode="M612"><axsl:variable name="parent_object" select="ancestor::win-def:interface_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='interface_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M612"/></axsl:template><axsl:template match="text()" priority="-1" mode="M612"/><axsl:template match="@*|node()" priority="-2" mode="M612"><axsl:apply-templates select="@*|*" mode="M612"/></axsl:template>

<!--PATTERN win-def_junctiontst-->


	<!--RULE -->
<axsl:template match="win-def:junction_test/win-def:object" priority="1001" mode="M613">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:junction_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a junction_test must reference a junction_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M613"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:junction_test/win-def:state" priority="1000" mode="M613">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:junction_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a junction_test must reference a junction_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M613"/></axsl:template><axsl:template match="text()" priority="-1" mode="M613"/><axsl:template match="@*|node()" priority="-2" mode="M613"><axsl:apply-templates select="@*|*" mode="M613"/></axsl:template>

<!--PATTERN win-def_junction_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:junction_object//oval-def:filter" priority="1000" mode="M614"><axsl:variable name="parent_object" select="ancestor::win-def:junction_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='junction_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M614"/></axsl:template><axsl:template match="text()" priority="-1" mode="M614"/><axsl:template match="@*|node()" priority="-2" mode="M614"><axsl:apply-templates select="@*|*" mode="M614"/></axsl:template>

<!--PATTERN win-def_lptst-->


	<!--RULE -->
<axsl:template match="win-def:lockoutpolicy_test/win-def:object" priority="1001" mode="M615">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:lockoutpolicy_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a lockoutpolicy_test must reference a lockoutpolicy_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M615"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:lockoutpolicy_test/win-def:state" priority="1000" mode="M615">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:lockoutpolicy_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a lockoutpolicy_test must reference a lockoutpolicy_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M615"/></axsl:template><axsl:template match="text()" priority="-1" mode="M615"/><axsl:template match="@*|node()" priority="-2" mode="M615"><axsl:apply-templates select="@*|*" mode="M615"/></axsl:template>

<!--PATTERN win-def_lps_fl-->


	<!--RULE -->
<axsl:template match="win-def:lockoutpolicy_state/win-def:force_logoff" priority="1000" mode="M616">

		<!--ASSERT -->
<axsl:choose><axsl:when test="string-length(.) = 0 or number(.) &lt; 0"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of force_logoff must be greater than or equal to zero<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M616"/></axsl:template><axsl:template match="text()" priority="-1" mode="M616"/><axsl:template match="@*|node()" priority="-2" mode="M616"><axsl:apply-templates select="@*|*" mode="M616"/></axsl:template>

<!--PATTERN win-def_lps_ld-->


	<!--RULE -->
<axsl:template match="win-def:lockoutpolicy_state/win-def:lockout_duration" priority="1000" mode="M617">

		<!--ASSERT -->
<axsl:choose><axsl:when test="string-length(.) = 0 or number(.) &lt; 0"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of lockout_duration must be greater than or equal to zero<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M617"/></axsl:template><axsl:template match="text()" priority="-1" mode="M617"/><axsl:template match="@*|node()" priority="-2" mode="M617"><axsl:apply-templates select="@*|*" mode="M617"/></axsl:template>

<!--PATTERN win-def_metabasetst-->


	<!--RULE -->
<axsl:template match="win-def:metabase_test/win-def:object" priority="1001" mode="M618">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:metabase_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a metabase_test must reference a metabase_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M618"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:metabase_test/win-def:state" priority="1000" mode="M618">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:metabase_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a metabase_test must reference a metabase_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M618"/></axsl:template><axsl:template match="text()" priority="-1" mode="M618"/><axsl:template match="@*|node()" priority="-2" mode="M618"><axsl:apply-templates select="@*|*" mode="M618"/></axsl:template>

<!--PATTERN win-def_metabase_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:metabase_object//oval-def:filter" priority="1000" mode="M619"><axsl:variable name="parent_object" select="ancestor::win-def:metabase_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='metabase_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M619"/></axsl:template><axsl:template match="text()" priority="-1" mode="M619"/><axsl:template match="@*|node()" priority="-2" mode="M619"><axsl:apply-templates select="@*|*" mode="M619"/></axsl:template>

<!--PATTERN win-def_ntusertst-->


	<!--RULE -->
<axsl:template match="win-def:ntuser_test/win-def:object" priority="1001" mode="M620">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:ntuser_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child
                                          element of a ntuser_test must reference a ntuser_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M620"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:ntuser_test/win-def:state" priority="1000" mode="M620">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:ntuser_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element
                                          of a ntuser_test must reference a ntuser_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M620"/></axsl:template><axsl:template match="text()" priority="-1" mode="M620"/><axsl:template match="@*|node()" priority="-2" mode="M620"><axsl:apply-templates select="@*|*" mode="M620"/></axsl:template>

<!--PATTERN win-def_ntuser_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:ntuser_object//oval-def:filter" priority="1000" mode="M621"><axsl:variable name="parent_object" select="ancestor::win-def:ntuser_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='ntuser_state'))"/><axsl:otherwise>State referenced in filter for
                                          <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M621"/></axsl:template><axsl:template match="text()" priority="-1" mode="M621"/><axsl:template match="@*|node()" priority="-2" mode="M621"><axsl:apply-templates select="@*|*" mode="M621"/></axsl:template>

<!--PATTERN win-def_ntuserobjkey2-->


	<!--RULE -->
<axsl:template match="win-def:ntuser_object/win-def:key[not(@operation='equals' or not(@operation))]" priority="1000" mode="M622">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth
                                                                                    behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the
                                                                                    recurse_direction behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M622"/></axsl:template><axsl:template match="text()" priority="-1" mode="M622"/><axsl:template match="@*|node()" priority="-2" mode="M622"><axsl:apply-templates select="@*|*" mode="M622"/></axsl:template>

<!--PATTERN win-def_pptst-->


	<!--RULE -->
<axsl:template match="win-def:passwordpolicy_test/win-def:object" priority="1001" mode="M623">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:passwordpolicy_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a passwordpolicy_test must reference a passwordpolicy_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M623"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:passwordpolicy_test/win-def:state" priority="1000" mode="M623">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:passwordpolicy_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a passwordpolicy_test must reference a passwordpolicy_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M623"/></axsl:template><axsl:template match="text()" priority="-1" mode="M623"/><axsl:template match="@*|node()" priority="-2" mode="M623"><axsl:apply-templates select="@*|*" mode="M623"/></axsl:template>

<!--PATTERN win-def_pwp_mpa-->


	<!--RULE -->
<axsl:template match="win-def:passwordpolicy_state/win-def:max_passwd_age" priority="1000" mode="M624">

		<!--ASSERT -->
<axsl:choose><axsl:when test="number(.) &lt; 0"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of max_passwd_age must be greater than or equal to zero<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M624"/></axsl:template><axsl:template match="text()" priority="-1" mode="M624"/><axsl:template match="@*|node()" priority="-2" mode="M624"><axsl:apply-templates select="@*|*" mode="M624"/></axsl:template>

<!--PATTERN win-def_peheaderobjfilepath-->


	<!--RULE -->
<axsl:template match="win-def:peheader_object/win-def:filepath" priority="1000" mode="M625">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth or @recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M625"/></axsl:template><axsl:template match="text()" priority="-1" mode="M625"/><axsl:template match="@*|node()" priority="-2" mode="M625"><axsl:apply-templates select="@*|*" mode="M625"/></axsl:template>

<!--PATTERN win-def_peheaderobjfilepath2-->


	<!--RULE -->
<axsl:template match="win-def:peheader_object/win-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M626">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a filepath entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M626"/></axsl:template><axsl:template match="text()" priority="-1" mode="M626"/><axsl:template match="@*|node()" priority="-2" mode="M626"><axsl:apply-templates select="@*|*" mode="M626"/></axsl:template>

<!--PATTERN win-def_peheaderobjpath-->


	<!--RULE -->
<axsl:template match="win-def:peheader_object/win-def:filepath[not(@operation='equals' or not(@operation))]" priority="1000" mode="M627">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_file_system='defined'])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_file_system behavior MUST not be set to 'defined' when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a path entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M627"/></axsl:template><axsl:template match="text()" priority="-1" mode="M627"/><axsl:template match="@*|node()" priority="-2" mode="M627"><axsl:apply-templates select="@*|*" mode="M627"/></axsl:template>

<!--PATTERN win-def_peheaderobjfilename-->


	<!--RULE -->
<axsl:template match="win-def:peheader_object/win-def:filename" priority="1000" mode="M628">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise>
                                                                                                <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M628"/></axsl:template><axsl:template match="text()" priority="-1" mode="M628"/><axsl:template match="@*|node()" priority="-2" mode="M628"><axsl:apply-templates select="@*|*" mode="M628"/></axsl:template>

<!--PATTERN win-def_peheaderstefilename-->


	<!--RULE -->
<axsl:template match="win-def:peheader_state/win-def:filename" priority="1000" mode="M629">

		<!--ASSERT -->
<axsl:choose><axsl:when test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|') or contains(.,'&lt;') or contains(.,'&quot;'))) or (@operation='pattern match')"/><axsl:otherwise>
                                                                        <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - filename entity cannot contain the characters / \ : * ? &gt; | &lt; "<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M629"/></axsl:template><axsl:template match="text()" priority="-1" mode="M629"/><axsl:template match="@*|node()" priority="-2" mode="M629"><axsl:apply-templates select="@*|*" mode="M629"/></axsl:template>

<!--PATTERN win-def_winporttst-->


	<!--RULE -->
<axsl:template match="win-def:port_test/win-def:object" priority="1001" mode="M630">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:port_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a port_test must reference a port_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M630"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:port_test/win-def:state" priority="1000" mode="M630">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:port_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a port_test must reference a port_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M630"/></axsl:template><axsl:template match="text()" priority="-1" mode="M630"/><axsl:template match="@*|node()" priority="-2" mode="M630"><axsl:apply-templates select="@*|*" mode="M630"/></axsl:template>

<!--PATTERN win-def_port_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:port_object//oval-def:filter" priority="1000" mode="M631"><axsl:variable name="parent_object" select="ancestor::win-def:port_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='port_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M631"/></axsl:template><axsl:template match="text()" priority="-1" mode="M631"/><axsl:template match="@*|node()" priority="-2" mode="M631"><axsl:apply-templates select="@*|*" mode="M631"/></axsl:template>

<!--PATTERN win-def_pertst-->


	<!--RULE -->
<axsl:template match="win-def:printereffectiverights_test/win-def:object" priority="1001" mode="M632">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:printereffectiverights_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a printereffectiverights_test must reference a printereffectiverights_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M632"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:printereffectiverights_test/win-def:state" priority="1000" mode="M632">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:printereffectiverights_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a printereffectiverights_test must reference a printereffectiverights_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M632"/></axsl:template><axsl:template match="text()" priority="-1" mode="M632"/><axsl:template match="@*|node()" priority="-2" mode="M632"><axsl:apply-templates select="@*|*" mode="M632"/></axsl:template>

<!--PATTERN win-def_printereffectiverights_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:printereffectiverights_object//oval-def:filter" priority="1000" mode="M633"><axsl:variable name="parent_object" select="ancestor::win-def:printereffectiverights_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='printereffectiverights_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M633"/></axsl:template><axsl:template match="text()" priority="-1" mode="M633"/><axsl:template match="@*|node()" priority="-2" mode="M633"><axsl:apply-templates select="@*|*" mode="M633"/></axsl:template>

<!--PATTERN win-def_pef_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:printereffectiverights_object/win-def:behaviors" priority="1000" mode="M634">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:printereffectiverights_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M634"/></axsl:template><axsl:template match="text()" priority="-1" mode="M634"/><axsl:template match="@*|node()" priority="-2" mode="M634"><axsl:apply-templates select="@*|*" mode="M634"/></axsl:template>

<!--PATTERN win-def_pef_resolve_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:printereffectiverights_object/win-def:behaviors" priority="1000" mode="M635">

		<!--REPORT -->
<axsl:if test="@resolve_group">DEPRECATED BEHAVIOR IN: printereffectiverights_object <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M635"/></axsl:template><axsl:template match="text()" priority="-1" mode="M635"/><axsl:template match="@*|node()" priority="-2" mode="M635"><axsl:apply-templates select="@*|*" mode="M635"/></axsl:template>

<!--PATTERN win-def_processtst_dep-->


	<!--RULE -->
<axsl:template match="win-def:process_test" priority="1000" mode="M636">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M636"/></axsl:template><axsl:template match="text()" priority="-1" mode="M636"/><axsl:template match="@*|node()" priority="-2" mode="M636"><axsl:apply-templates select="@*|*" mode="M636"/></axsl:template>

<!--PATTERN win-def_processtst-->


	<!--RULE -->
<axsl:template match="win-def:process_test/win-def:object" priority="1001" mode="M637">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:process_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a process_test must reference a process_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M637"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:process_test/win-def:state" priority="1000" mode="M637">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:process_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a process_test must reference a process_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M637"/></axsl:template><axsl:template match="text()" priority="-1" mode="M637"/><axsl:template match="@*|node()" priority="-2" mode="M637"><axsl:apply-templates select="@*|*" mode="M637"/></axsl:template>

<!--PATTERN win-def_processobj_dep-->


	<!--RULE -->
<axsl:template match="win-def:process_object" priority="1000" mode="M638">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M638"/></axsl:template><axsl:template match="text()" priority="-1" mode="M638"/><axsl:template match="@*|node()" priority="-2" mode="M638"><axsl:apply-templates select="@*|*" mode="M638"/></axsl:template>

<!--PATTERN win-def_processste_dep-->


	<!--RULE -->
<axsl:template match="win-def:process_state" priority="1000" mode="M639">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M639"/></axsl:template><axsl:template match="text()" priority="-1" mode="M639"/><axsl:template match="@*|node()" priority="-2" mode="M639"><axsl:apply-templates select="@*|*" mode="M639"/></axsl:template>

<!--PATTERN win-def_process58tst-->


	<!--RULE -->
<axsl:template match="win-def:process58_test/win-def:object" priority="1001" mode="M640">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:process58_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a process58_test must reference a process58_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M640"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:process58_test/win-def:state" priority="1000" mode="M640">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:process58_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a process58_test must reference a process58_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M640"/></axsl:template><axsl:template match="text()" priority="-1" mode="M640"/><axsl:template match="@*|node()" priority="-2" mode="M640"><axsl:apply-templates select="@*|*" mode="M640"/></axsl:template>

<!--PATTERN win-def_process58_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:process58_object//oval-def:filter" priority="1000" mode="M641"><axsl:variable name="parent_object" select="ancestor::win-def:process58_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='process58_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M641"/></axsl:template><axsl:template match="text()" priority="-1" mode="M641"/><axsl:template match="@*|node()" priority="-2" mode="M641"><axsl:apply-templates select="@*|*" mode="M641"/></axsl:template>

<!--PATTERN win-def_regtst-->


	<!--RULE -->
<axsl:template match="win-def:registry_test/win-def:object" priority="1001" mode="M642">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:registry_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a registry_test must reference a registry_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M642"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:registry_test/win-def:state" priority="1000" mode="M642">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:registry_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a registry_test must reference a registry_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M642"/></axsl:template><axsl:template match="text()" priority="-1" mode="M642"/><axsl:template match="@*|node()" priority="-2" mode="M642"><axsl:apply-templates select="@*|*" mode="M642"/></axsl:template>

<!--PATTERN win-def_registry_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:registry_object//oval-def:filter" priority="1000" mode="M643"><axsl:variable name="parent_object" select="ancestor::win-def:registry_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='registry_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M643"/></axsl:template><axsl:template match="text()" priority="-1" mode="M643"/><axsl:template match="@*|node()" priority="-2" mode="M643"><axsl:apply-templates select="@*|*" mode="M643"/></axsl:template>

<!--PATTERN win-def_regobjkey2-->


	<!--RULE -->
<axsl:template match="win-def:registry_object/win-def:key[not(@operation='equals' or not(@operation))]" priority="1000" mode="M644">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M644"/></axsl:template><axsl:template match="text()" priority="-1" mode="M644"/><axsl:template match="@*|node()" priority="-2" mode="M644"><axsl:apply-templates select="@*|*" mode="M644"/></axsl:template>

<!--PATTERN win-def_rap53tst-->


	<!--RULE -->
<axsl:template match="win-def:regkeyauditedpermissions53_test/win-def:object" priority="1001" mode="M645">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions53_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a regkeyauditedpermissions53_test must reference a regkeyauditedpermissions53_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M645"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:regkeyauditedpermissions53_test/win-def:state" priority="1000" mode="M645">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyauditedpermissions53_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a regkeyauditedpermissions53_test must reference a regkeyauditedpermissions53_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M645"/></axsl:template><axsl:template match="text()" priority="-1" mode="M645"/><axsl:template match="@*|node()" priority="-2" mode="M645"><axsl:apply-templates select="@*|*" mode="M645"/></axsl:template>

<!--PATTERN win-def_regkeyauditedpermissions53_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:regkeyauditedpermissions53_object//oval-def:filter" priority="1000" mode="M646"><axsl:variable name="parent_object" select="ancestor::win-def:regkeyauditedpermissions53_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='regkeyauditedpermissions53_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M646"/></axsl:template><axsl:template match="text()" priority="-1" mode="M646"/><axsl:template match="@*|node()" priority="-2" mode="M646"><axsl:apply-templates select="@*|*" mode="M646"/></axsl:template>

<!--PATTERN win-def_regkeyauditedpermissions53_objectkey-->


	<!--RULE -->
<axsl:template match="win-def:regkeyauditedpermissions53_object/win-def:key[not(@operation='equals' or not(@operation))]" priority="1000" mode="M647">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M647"/></axsl:template><axsl:template match="text()" priority="-1" mode="M647"/><axsl:template match="@*|node()" priority="-2" mode="M647"><axsl:apply-templates select="@*|*" mode="M647"/></axsl:template>

<!--PATTERN win-def_rap53stestandard_synchronize-->


	<!--RULE -->
<axsl:template match="win-def:regkeyauditedpermissions53_state/win-def:standard_synchronize" priority="1000" mode="M648">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M648"/></axsl:template><axsl:template match="text()" priority="-1" mode="M648"/><axsl:template match="@*|node()" priority="-2" mode="M648"><axsl:apply-templates select="@*|*" mode="M648"/></axsl:template>

<!--PATTERN win-def_rka53_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions53_object/win-def:behaviors" priority="1000" mode="M649">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:regkeyauditedpermissions53_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M649"/></axsl:template><axsl:template match="text()" priority="-1" mode="M649"/><axsl:template match="@*|node()" priority="-2" mode="M649"><axsl:apply-templates select="@*|*" mode="M649"/></axsl:template>

<!--PATTERN win-def_rka53_resolve_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions53_object/win-def:behaviors" priority="1000" mode="M650">

		<!--REPORT -->
<axsl:if test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyauditedpermissions53_object <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M650"/></axsl:template><axsl:template match="text()" priority="-1" mode="M650"/><axsl:template match="@*|node()" priority="-2" mode="M650"><axsl:apply-templates select="@*|*" mode="M650"/></axsl:template>

<!--PATTERN win-def_raptst_dep-->


	<!--RULE -->
<axsl:template match="win-def:regkeyauditedpermissions_test" priority="1000" mode="M651">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M651"/></axsl:template><axsl:template match="text()" priority="-1" mode="M651"/><axsl:template match="@*|node()" priority="-2" mode="M651"><axsl:apply-templates select="@*|*" mode="M651"/></axsl:template>

<!--PATTERN win-def_raptst-->


	<!--RULE -->
<axsl:template match="win-def:regkeyauditedpermissions_test/win-def:object" priority="1001" mode="M652">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a regkeyauditedpermissions_test must reference a regkeyauditedpermissions_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M652"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:regkeyauditedpermissions_test/win-def:state" priority="1000" mode="M652">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyauditedpermissions_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a regkeyauditedpermissions_test must reference a regkeyauditedpermissions_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M652"/></axsl:template><axsl:template match="text()" priority="-1" mode="M652"/><axsl:template match="@*|node()" priority="-2" mode="M652"><axsl:apply-templates select="@*|*" mode="M652"/></axsl:template>

<!--PATTERN win-def_rapobj_dep-->


	<!--RULE -->
<axsl:template match="win-def:regkeyauditedpermissions_object" priority="1000" mode="M653">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M653"/></axsl:template><axsl:template match="text()" priority="-1" mode="M653"/><axsl:template match="@*|node()" priority="-2" mode="M653"><axsl:apply-templates select="@*|*" mode="M653"/></axsl:template>

<!--PATTERN win-def_regkeyauditedpermissions_objectkey-->


	<!--RULE -->
<axsl:template match="win-def:regkeyauditedpermissions_object/win-def:key[not(@operation='equals' or not(@operation))]" priority="1000" mode="M654">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M654"/></axsl:template><axsl:template match="text()" priority="-1" mode="M654"/><axsl:template match="@*|node()" priority="-2" mode="M654"><axsl:apply-templates select="@*|*" mode="M654"/></axsl:template>

<!--PATTERN win-def_rapste_dep-->


	<!--RULE -->
<axsl:template match="win-def:regkeyauditedpermissions_state" priority="1000" mode="M655">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M655"/></axsl:template><axsl:template match="text()" priority="-1" mode="M655"/><axsl:template match="@*|node()" priority="-2" mode="M655"><axsl:apply-templates select="@*|*" mode="M655"/></axsl:template>

<!--PATTERN win-def_rka_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions_object/win-def:behaviors" priority="1000" mode="M656">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:regkeyauditedpermissions_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M656"/></axsl:template><axsl:template match="text()" priority="-1" mode="M656"/><axsl:template match="@*|node()" priority="-2" mode="M656"><axsl:apply-templates select="@*|*" mode="M656"/></axsl:template>

<!--PATTERN win-def_rka_resolve_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions_object/win-def:behaviors" priority="1000" mode="M657">

		<!--REPORT -->
<axsl:if test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyauditedpermissions_object <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M657"/></axsl:template><axsl:template match="text()" priority="-1" mode="M657"/><axsl:template match="@*|node()" priority="-2" mode="M657"><axsl:apply-templates select="@*|*" mode="M657"/></axsl:template>

<!--PATTERN win-def_rer53tst-->


	<!--RULE -->
<axsl:template match="win-def:regkeyeffectiverights53_test/win-def:object" priority="1001" mode="M658">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights53_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a regkeyeffectiverights53_test must reference a regkeyeffectiverights53_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M658"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:regkeyeffectiverights53_test/win-def:state" priority="1000" mode="M658">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyeffectiverights53_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a regkeyeffectiverights53_test must reference a regkeyeffectiverights53_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M658"/></axsl:template><axsl:template match="text()" priority="-1" mode="M658"/><axsl:template match="@*|node()" priority="-2" mode="M658"><axsl:apply-templates select="@*|*" mode="M658"/></axsl:template>

<!--PATTERN win-def_regkeyeffectiverights53_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:regkeyeffectiverights53_object//oval-def:filter" priority="1000" mode="M659"><axsl:variable name="parent_object" select="ancestor::win-def:regkeyeffectiverights53_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='regkeyeffectiverights53_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M659"/></axsl:template><axsl:template match="text()" priority="-1" mode="M659"/><axsl:template match="@*|node()" priority="-2" mode="M659"><axsl:apply-templates select="@*|*" mode="M659"/></axsl:template>

<!--PATTERN win-def_regkeyeffectiverights53_objectkey-->


	<!--RULE -->
<axsl:template match="win-def:regkeyeffectiverights53_object/win-def:key[not(@operation='equals' or not(@operation))]" priority="1000" mode="M660">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M660"/></axsl:template><axsl:template match="text()" priority="-1" mode="M660"/><axsl:template match="@*|node()" priority="-2" mode="M660"><axsl:apply-templates select="@*|*" mode="M660"/></axsl:template>

<!--PATTERN win-def_rer53stestandard_synchronize-->


	<!--RULE -->
<axsl:template match="win-def:regkeyeffectiverights53_state/win-def:standard_synchronize" priority="1000" mode="M661">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M661"/></axsl:template><axsl:template match="text()" priority="-1" mode="M661"/><axsl:template match="@*|node()" priority="-2" mode="M661"><axsl:apply-templates select="@*|*" mode="M661"/></axsl:template>

<!--PATTERN win-def_rke53_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights53_object/win-def:behaviors" priority="1000" mode="M662">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:regkeyeffectiverights53_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M662"/></axsl:template><axsl:template match="text()" priority="-1" mode="M662"/><axsl:template match="@*|node()" priority="-2" mode="M662"><axsl:apply-templates select="@*|*" mode="M662"/></axsl:template>

<!--PATTERN win-def_rke53_resolve_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights53_object/win-def:behaviors" priority="1000" mode="M663">

		<!--REPORT -->
<axsl:if test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyeffectiverights53_object <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M663"/></axsl:template><axsl:template match="text()" priority="-1" mode="M663"/><axsl:template match="@*|node()" priority="-2" mode="M663"><axsl:apply-templates select="@*|*" mode="M663"/></axsl:template>

<!--PATTERN win-def_rertst_dep-->


	<!--RULE -->
<axsl:template match="win-def:regkeyeffectiverights_test" priority="1000" mode="M664">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M664"/></axsl:template><axsl:template match="text()" priority="-1" mode="M664"/><axsl:template match="@*|node()" priority="-2" mode="M664"><axsl:apply-templates select="@*|*" mode="M664"/></axsl:template>

<!--PATTERN win-def_rertst-->


	<!--RULE -->
<axsl:template match="win-def:regkeyeffectiverights_test/win-def:object" priority="1001" mode="M665">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a regkeyeffectiverights_test must reference a regkeyeffectiverights_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M665"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:regkeyeffectiverights_test/win-def:state" priority="1000" mode="M665">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyeffectiverights_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a regkeyeffectiverights_test must reference a regkeyeffectiverights_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M665"/></axsl:template><axsl:template match="text()" priority="-1" mode="M665"/><axsl:template match="@*|node()" priority="-2" mode="M665"><axsl:apply-templates select="@*|*" mode="M665"/></axsl:template>

<!--PATTERN win-def_rerobj_dep-->


	<!--RULE -->
<axsl:template match="win-def:regkeyeffectiverights_object" priority="1000" mode="M666">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M666"/></axsl:template><axsl:template match="text()" priority="-1" mode="M666"/><axsl:template match="@*|node()" priority="-2" mode="M666"><axsl:apply-templates select="@*|*" mode="M666"/></axsl:template>

<!--PATTERN win-def_regkeyeffectiverights_objectkey-->


	<!--RULE -->
<axsl:template match="win-def:regkeyeffectiverights_object/win-def:key[not(@operation='equals' or not(@operation))]" priority="1000" mode="M667">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@max_depth])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the max_depth behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(preceding-sibling::win-def:behaviors[@recurse_direction])"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the recurse_direction behavior MUST not be used when a pattern match is used with a key entity.<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M667"/></axsl:template><axsl:template match="text()" priority="-1" mode="M667"/><axsl:template match="@*|node()" priority="-2" mode="M667"><axsl:apply-templates select="@*|*" mode="M667"/></axsl:template>

<!--PATTERN win-def_rerste_dep-->


	<!--RULE -->
<axsl:template match="win-def:regkeyeffectiverights_state" priority="1000" mode="M668">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M668"/></axsl:template><axsl:template match="text()" priority="-1" mode="M668"/><axsl:template match="@*|node()" priority="-2" mode="M668"><axsl:apply-templates select="@*|*" mode="M668"/></axsl:template>

<!--PATTERN win-def_rke_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights_object/win-def:behaviors" priority="1000" mode="M669">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:regkeyeffectiverights_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M669"/></axsl:template><axsl:template match="text()" priority="-1" mode="M669"/><axsl:template match="@*|node()" priority="-2" mode="M669"><axsl:apply-templates select="@*|*" mode="M669"/></axsl:template>

<!--PATTERN win-def_rke_resolve_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights_object/win-def:behaviors" priority="1000" mode="M670">

		<!--REPORT -->
<axsl:if test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyeffectiverights_object <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M670"/></axsl:template><axsl:template match="text()" priority="-1" mode="M670"/><axsl:template match="@*|node()" priority="-2" mode="M670"><axsl:apply-templates select="@*|*" mode="M670"/></axsl:template>

<!--PATTERN win-def_servicetst-->


	<!--RULE -->
<axsl:template match="win-def:service_test/win-def:object" priority="1001" mode="M671">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:service_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a service_test must reference a service_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M671"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:service_test/win-def:state" priority="1000" mode="M671">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:service_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a service_test must reference a service_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M671"/></axsl:template><axsl:template match="text()" priority="-1" mode="M671"/><axsl:template match="@*|node()" priority="-2" mode="M671"><axsl:apply-templates select="@*|*" mode="M671"/></axsl:template>

<!--PATTERN win-def_service_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:service_object//oval-def:filter" priority="1000" mode="M672"><axsl:variable name="parent_object" select="ancestor::win-def:service_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='service_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M672"/></axsl:template><axsl:template match="text()" priority="-1" mode="M672"/><axsl:template match="@*|node()" priority="-2" mode="M672"><axsl:apply-templates select="@*|*" mode="M672"/></axsl:template>

<!--PATTERN win-def_svcertst-->


	<!--RULE -->
<axsl:template match="win-def:serviceeffectiverights_test/win-def:object" priority="1001" mode="M673">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:serviceeffectiverights_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a serviceeffectiverights_test must reference a serviceeffectiverights_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M673"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:serviceeffectiverights_test/win-def:state" priority="1000" mode="M673">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:serviceeffectiverights_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a serviceeffectiverights_test must reference a serviceeffectiverights_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M673"/></axsl:template><axsl:template match="text()" priority="-1" mode="M673"/><axsl:template match="@*|node()" priority="-2" mode="M673"><axsl:apply-templates select="@*|*" mode="M673"/></axsl:template>

<!--PATTERN win-def_serviceeffectiverights_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:serviceeffectiverights_object//oval-def:filter" priority="1000" mode="M674"><axsl:variable name="parent_object" select="ancestor::win-def:serviceeffectiverights_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='serviceeffectiverights_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M674"/></axsl:template><axsl:template match="text()" priority="-1" mode="M674"/><axsl:template match="@*|node()" priority="-2" mode="M674"><axsl:apply-templates select="@*|*" mode="M674"/></axsl:template>

<!--PATTERN win-def_sef_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:serviceeffectiverights_object/win-def:behaviors" priority="1000" mode="M675">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:serviceeffectiverights_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M675"/></axsl:template><axsl:template match="text()" priority="-1" mode="M675"/><axsl:template match="@*|node()" priority="-2" mode="M675"><axsl:apply-templates select="@*|*" mode="M675"/></axsl:template>

<!--PATTERN win-def_sef_resolve_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:serviceeffectiverights_object/win-def:behaviors" priority="1000" mode="M676">

		<!--REPORT -->
<axsl:if test="@resolve_group">DEPRECATED BEHAVIOR IN: serviceeffectiverights_object <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M676"/></axsl:template><axsl:template match="text()" priority="-1" mode="M676"/><axsl:template match="@*|node()" priority="-2" mode="M676"><axsl:apply-templates select="@*|*" mode="M676"/></axsl:template>

<!--PATTERN win-def_srtst-->


	<!--RULE -->
<axsl:template match="win-def:sharedresource_test/win-def:object" priority="1001" mode="M677">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:sharedresource_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a sharedresource_test must reference a sharedresource_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M677"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:sharedresource_test/win-def:state" priority="1000" mode="M677">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:sharedresource_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a sharedresource_test must reference a sharedresource_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M677"/></axsl:template><axsl:template match="text()" priority="-1" mode="M677"/><axsl:template match="@*|node()" priority="-2" mode="M677"><axsl:apply-templates select="@*|*" mode="M677"/></axsl:template>

<!--PATTERN win-def_sharedresource_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:sharedresource_object//oval-def:filter" priority="1000" mode="M678"><axsl:variable name="parent_object" select="ancestor::win-def:sharedresource_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='sharedresource_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M678"/></axsl:template><axsl:template match="text()" priority="-1" mode="M678"/><axsl:template match="@*|node()" priority="-2" mode="M678"><axsl:apply-templates select="@*|*" mode="M678"/></axsl:template>

<!--PATTERN win-def_sraptst-->


	<!--RULE -->
<axsl:template match="win-def:sharedresourceauditedpermissions_test/win-def:object" priority="1001" mode="M679">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:sharedresourceauditedpermissions_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a sharedresourceauditedpermissions_test must reference a sharedresourceauditedpermissions_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M679"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:sharedresourceauditedpermissions_test/win-def:state" priority="1000" mode="M679">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:sharedresourceauditedpermissions_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a sharedresourceauditedpermissions_test must reference a sharedresourceauditedpermissions_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M679"/></axsl:template><axsl:template match="text()" priority="-1" mode="M679"/><axsl:template match="@*|node()" priority="-2" mode="M679"><axsl:apply-templates select="@*|*" mode="M679"/></axsl:template>

<!--PATTERN win-def_sharedresourceauditedpermissions_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:sharedresourceauditedpermissions_object//oval-def:filter" priority="1000" mode="M680"><axsl:variable name="parent_object" select="ancestor::win-def:sharedresourceauditedpermissions_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='sharedresourceauditedpermissions_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M680"/></axsl:template><axsl:template match="text()" priority="-1" mode="M680"/><axsl:template match="@*|node()" priority="-2" mode="M680"><axsl:apply-templates select="@*|*" mode="M680"/></axsl:template>

<!--PATTERN win-def_sra_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:sharedresourceauditedpermissions_object/win-def:behaviors" priority="1000" mode="M681">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:sharedresourceauditedpermissions_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M681"/></axsl:template><axsl:template match="text()" priority="-1" mode="M681"/><axsl:template match="@*|node()" priority="-2" mode="M681"><axsl:apply-templates select="@*|*" mode="M681"/></axsl:template>

<!--PATTERN win-def_srertst-->


	<!--RULE -->
<axsl:template match="win-def:sharedresourceeffectiverights_test/win-def:object" priority="1001" mode="M682">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:sharedresourceeffectiverights_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a sharedresourceeffectiverights_test must reference a sharedresourceeffectiverights_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M682"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:sharedresourceeffectiverights_test/win-def:state" priority="1000" mode="M682">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:sharedresourceeffectiverights_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a sharedresourceeffectiverights_test must reference a sharedresourceeffectiverights_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M682"/></axsl:template><axsl:template match="text()" priority="-1" mode="M682"/><axsl:template match="@*|node()" priority="-2" mode="M682"><axsl:apply-templates select="@*|*" mode="M682"/></axsl:template>

<!--PATTERN win-def_sharedresourceeffectiverights_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:sharedresourceeffectiverights_object//oval-def:filter" priority="1000" mode="M683"><axsl:variable name="parent_object" select="ancestor::win-def:sharedresourceeffectiverights_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='sharedresourceeffectiverights_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M683"/></axsl:template><axsl:template match="text()" priority="-1" mode="M683"/><axsl:template match="@*|node()" priority="-2" mode="M683"><axsl:apply-templates select="@*|*" mode="M683"/></axsl:template>

<!--PATTERN win-def_sre_include_group_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:objects/win-def:sharedresourceeffectiverights_object/win-def:behaviors" priority="1000" mode="M684">

		<!--REPORT -->
<axsl:if test="@include_group">DEPRECATED BEHAVIOR IN: win-def:sharedresourceeffectiverights_object<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M684"/></axsl:template><axsl:template match="text()" priority="-1" mode="M684"/><axsl:template match="@*|node()" priority="-2" mode="M684"><axsl:apply-templates select="@*|*" mode="M684"/></axsl:template>

<!--PATTERN win-def_sidtst-->


	<!--RULE -->
<axsl:template match="win-def:sid_test/win-def:object" priority="1001" mode="M685">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:sid_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a sid_test must reference a sid_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M685"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:sid_test/win-def:state" priority="1000" mode="M685">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:sid_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a sid_test must reference a sid_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M685"/></axsl:template><axsl:template match="text()" priority="-1" mode="M685"/><axsl:template match="@*|node()" priority="-2" mode="M685"><axsl:apply-templates select="@*|*" mode="M685"/></axsl:template>

<!--PATTERN win-def_sid_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:sid_object//oval-def:filter" priority="1000" mode="M686"><axsl:variable name="parent_object" select="ancestor::win-def:sid_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='sid_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M686"/></axsl:template><axsl:template match="text()" priority="-1" mode="M686"/><axsl:template match="@*|node()" priority="-2" mode="M686"><axsl:apply-templates select="@*|*" mode="M686"/></axsl:template>

<!--PATTERN win-def_sidsidtst-->


	<!--RULE -->
<axsl:template match="win-def:sid_sid_test/win-def:object" priority="1001" mode="M687">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:sid_sid_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a sid_sid_test must reference a sid_sid_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M687"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:sid_sid_test/win-def:state" priority="1000" mode="M687">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:sid_sid_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a sid_sid_test must reference a sid_sid_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M687"/></axsl:template><axsl:template match="text()" priority="-1" mode="M687"/><axsl:template match="@*|node()" priority="-2" mode="M687"><axsl:apply-templates select="@*|*" mode="M687"/></axsl:template>

<!--PATTERN win-def_sid_sid_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:sid_sid_object//oval-def:filter" priority="1000" mode="M688"><axsl:variable name="parent_object" select="ancestor::win-def:sid_sid_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='sid_sid_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M688"/></axsl:template><axsl:template match="text()" priority="-1" mode="M688"/><axsl:template match="@*|node()" priority="-2" mode="M688"><axsl:apply-templates select="@*|*" mode="M688"/></axsl:template>

<!--PATTERN win-def_uactst-->


	<!--RULE -->
<axsl:template match="win-def:uac_test/win-def:object" priority="1001" mode="M689">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:uac_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a uac_test must reference a uac_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M689"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:uac_test/win-def:state" priority="1000" mode="M689">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:uac_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a uac_test must reference a uac_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M689"/></axsl:template><axsl:template match="text()" priority="-1" mode="M689"/><axsl:template match="@*|node()" priority="-2" mode="M689"><axsl:apply-templates select="@*|*" mode="M689"/></axsl:template>

<!--PATTERN win-def_usertst_dep-->


	<!--RULE -->
<axsl:template match="win-def:user_test" priority="1000" mode="M690">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M690"/></axsl:template><axsl:template match="text()" priority="-1" mode="M690"/><axsl:template match="@*|node()" priority="-2" mode="M690"><axsl:apply-templates select="@*|*" mode="M690"/></axsl:template>

<!--PATTERN win-def_usertst-->


	<!--RULE -->
<axsl:template match="win-def:user_test/win-def:object" priority="1001" mode="M691">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:user_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a user_test must reference a user_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M691"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:user_test/win-def:state" priority="1000" mode="M691">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:user_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a user_test must reference a user_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M691"/></axsl:template><axsl:template match="text()" priority="-1" mode="M691"/><axsl:template match="@*|node()" priority="-2" mode="M691"><axsl:apply-templates select="@*|*" mode="M691"/></axsl:template>

<!--PATTERN win-def_userobj_dep-->


	<!--RULE -->
<axsl:template match="win-def:user_object" priority="1000" mode="M692">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M692"/></axsl:template><axsl:template match="text()" priority="-1" mode="M692"/><axsl:template match="@*|node()" priority="-2" mode="M692"><axsl:apply-templates select="@*|*" mode="M692"/></axsl:template>

<!--PATTERN win-def_user_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:user_object//oval-def:filter" priority="1000" mode="M693"><axsl:variable name="parent_object" select="ancestor::win-def:user_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='user_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M693"/></axsl:template><axsl:template match="text()" priority="-1" mode="M693"/><axsl:template match="@*|node()" priority="-2" mode="M693"><axsl:apply-templates select="@*|*" mode="M693"/></axsl:template>

<!--PATTERN win-def_userste_dep-->


	<!--RULE -->
<axsl:template match="win-def:user_state" priority="1000" mode="M694">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M694"/></axsl:template><axsl:template match="text()" priority="-1" mode="M694"/><axsl:template match="@*|node()" priority="-2" mode="M694"><axsl:apply-templates select="@*|*" mode="M694"/></axsl:template>

<!--PATTERN win-def_usersid55tst-->


	<!--RULE -->
<axsl:template match="win-def:user_sid55_test/win-def:object" priority="1001" mode="M695">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:user_sid55_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a user_sid55_test must reference a user_sid55_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M695"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:user_sid55_test/win-def:state" priority="1000" mode="M695">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:user_sid55_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a user_sid55_test must reference a user_sid55_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M695"/></axsl:template><axsl:template match="text()" priority="-1" mode="M695"/><axsl:template match="@*|node()" priority="-2" mode="M695"><axsl:apply-templates select="@*|*" mode="M695"/></axsl:template>

<!--PATTERN win-def_user_sid55_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:user_sid55_object//oval-def:filter" priority="1000" mode="M696"><axsl:variable name="parent_object" select="ancestor::win-def:user_sid55_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='user_sid55_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M696"/></axsl:template><axsl:template match="text()" priority="-1" mode="M696"/><axsl:template match="@*|node()" priority="-2" mode="M696"><axsl:apply-templates select="@*|*" mode="M696"/></axsl:template>

<!--PATTERN win-def_usersidtst_dep-->


	<!--RULE -->
<axsl:template match="win-def:user_sid_test" priority="1000" mode="M697">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M697"/></axsl:template><axsl:template match="text()" priority="-1" mode="M697"/><axsl:template match="@*|node()" priority="-2" mode="M697"><axsl:apply-templates select="@*|*" mode="M697"/></axsl:template>

<!--PATTERN win-def_usersidtst-->


	<!--RULE -->
<axsl:template match="win-def:user_sid_test/win-def:object" priority="1001" mode="M698">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:user_sid_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a user_sid_test must reference a user_sid_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M698"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:user_sid_test/win-def:state" priority="1000" mode="M698">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:user_sid_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a user_sid_test must reference a user_sid_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M698"/></axsl:template><axsl:template match="text()" priority="-1" mode="M698"/><axsl:template match="@*|node()" priority="-2" mode="M698"><axsl:apply-templates select="@*|*" mode="M698"/></axsl:template>

<!--PATTERN win-def_usersidobj_dep-->


	<!--RULE -->
<axsl:template match="win-def:user_sid_object" priority="1000" mode="M699">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M699"/></axsl:template><axsl:template match="text()" priority="-1" mode="M699"/><axsl:template match="@*|node()" priority="-2" mode="M699"><axsl:apply-templates select="@*|*" mode="M699"/></axsl:template>

<!--PATTERN win-def_usersidste_dep-->


	<!--RULE -->
<axsl:template match="win-def:user_sid_state" priority="1000" mode="M700">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M700"/></axsl:template><axsl:template match="text()" priority="-1" mode="M700"/><axsl:template match="@*|node()" priority="-2" mode="M700"><axsl:apply-templates select="@*|*" mode="M700"/></axsl:template>

<!--PATTERN win-def_userrighttst-->


	<!--RULE -->
<axsl:template match="win-def:userright_test/win-def:object" priority="1001" mode="M701">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:userright_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a userright_test must reference a userright_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M701"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:userright_test/win-def:state" priority="1000" mode="M701">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:userright_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a userright_test must reference a userright_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M701"/></axsl:template><axsl:template match="text()" priority="-1" mode="M701"/><axsl:template match="@*|node()" priority="-2" mode="M701"><axsl:apply-templates select="@*|*" mode="M701"/></axsl:template>

<!--PATTERN win-def_userright_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:userright_object//oval-def:filter" priority="1000" mode="M702"><axsl:variable name="parent_object" select="ancestor::win-def:userright_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='userright_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M702"/></axsl:template><axsl:template match="text()" priority="-1" mode="M702"/><axsl:template match="@*|node()" priority="-2" mode="M702"><axsl:apply-templates select="@*|*" mode="M702"/></axsl:template>

<!--PATTERN win-def_volumetst-->


	<!--RULE -->
<axsl:template match="win-def:volume_test/win-def:object" priority="1001" mode="M703">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:volume_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a volume_test must reference a volume_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M703"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:volume_test/win-def:state" priority="1000" mode="M703">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:volume_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a volume_test must reference a volume_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M703"/></axsl:template><axsl:template match="text()" priority="-1" mode="M703"/><axsl:template match="@*|node()" priority="-2" mode="M703"><axsl:apply-templates select="@*|*" mode="M703"/></axsl:template>

<!--PATTERN win-def_volume_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:volume_object//oval-def:filter" priority="1000" mode="M704"><axsl:variable name="parent_object" select="ancestor::win-def:volume_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='volume_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M704"/></axsl:template><axsl:template match="text()" priority="-1" mode="M704"/><axsl:template match="@*|node()" priority="-2" mode="M704"><axsl:apply-templates select="@*|*" mode="M704"/></axsl:template>

<!--PATTERN win-def_wmitst_dep-->


	<!--RULE -->
<axsl:template match="win-def:wmi_test" priority="1000" mode="M705">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED TEST: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M705"/></axsl:template><axsl:template match="text()" priority="-1" mode="M705"/><axsl:template match="@*|node()" priority="-2" mode="M705"><axsl:apply-templates select="@*|*" mode="M705"/></axsl:template>

<!--PATTERN win-def_wmitst-->


	<!--RULE -->
<axsl:template match="win-def:wmi_test/win-def:object" priority="1001" mode="M706">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:wmi_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a wmi_test must reference a wmi_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M706"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:wmi_test/win-def:state" priority="1000" mode="M706">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:wmi_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a wmi_test must reference a wmi_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M706"/></axsl:template><axsl:template match="text()" priority="-1" mode="M706"/><axsl:template match="@*|node()" priority="-2" mode="M706"><axsl:apply-templates select="@*|*" mode="M706"/></axsl:template>

<!--PATTERN win-def_wmiobj_dep-->


	<!--RULE -->
<axsl:template match="win-def:wmi_object" priority="1000" mode="M707">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED OBJECT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M707"/></axsl:template><axsl:template match="text()" priority="-1" mode="M707"/><axsl:template match="@*|node()" priority="-2" mode="M707"><axsl:apply-templates select="@*|*" mode="M707"/></axsl:template>

<!--PATTERN win-def_wmiobjnamespace-->


	<!--RULE -->
<axsl:template match="win-def:wmi_object/win-def:namespace" priority="1000" mode="M708">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the namespace entity of a wmi_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M708"/></axsl:template><axsl:template match="text()" priority="-1" mode="M708"/><axsl:template match="@*|node()" priority="-2" mode="M708"><axsl:apply-templates select="@*|*" mode="M708"/></axsl:template>

<!--PATTERN win-def_wmiobjwql-->


	<!--RULE -->
<axsl:template match="win-def:wmi_object/win-def:wql" priority="1000" mode="M709">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the wql entity of a wmi_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M709"/></axsl:template><axsl:template match="text()" priority="-1" mode="M709"/><axsl:template match="@*|node()" priority="-2" mode="M709"><axsl:apply-templates select="@*|*" mode="M709"/></axsl:template>

<!--PATTERN win-def_wmiste_dep-->


	<!--RULE -->
<axsl:template match="win-def:wmi_state" priority="1000" mode="M710">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED STATE: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M710"/></axsl:template><axsl:template match="text()" priority="-1" mode="M710"/><axsl:template match="@*|node()" priority="-2" mode="M710"><axsl:apply-templates select="@*|*" mode="M710"/></axsl:template>

<!--PATTERN win-def_wmi57tst-->


	<!--RULE -->
<axsl:template match="win-def:wmi57_test/win-def:object" priority="1001" mode="M711">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:wmi57_object/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a wmi57_test must reference a wmi57_object<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M711"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:wmi57_test/win-def:state" priority="1000" mode="M711">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:wmi57_state/@id"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a wmi57_test must reference a wmi57_state<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M711"/></axsl:template><axsl:template match="text()" priority="-1" mode="M711"/><axsl:template match="@*|node()" priority="-2" mode="M711"><axsl:apply-templates select="@*|*" mode="M711"/></axsl:template>

<!--PATTERN win-def_wmi57_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:wmi57_object//oval-def:filter" priority="1000" mode="M712"><axsl:variable name="parent_object" select="ancestor::win-def:wmi57_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='wmi57_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M712"/></axsl:template><axsl:template match="text()" priority="-1" mode="M712"/><axsl:template match="@*|node()" priority="-2" mode="M712"><axsl:apply-templates select="@*|*" mode="M712"/></axsl:template>

<!--PATTERN win-def_wmi57objnamespace-->


	<!--RULE -->
<axsl:template match="win-def:wmi57_object/win-def:namespace" priority="1000" mode="M713">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the namespace entity of a wmi57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M713"/></axsl:template><axsl:template match="text()" priority="-1" mode="M713"/><axsl:template match="@*|node()" priority="-2" mode="M713"><axsl:apply-templates select="@*|*" mode="M713"/></axsl:template>

<!--PATTERN win-def_wmi57objwql-->


	<!--RULE -->
<axsl:template match="win-def:wmi57_object/win-def:wql" priority="1000" mode="M714">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the wql entity of a wmi57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M714"/></axsl:template><axsl:template match="text()" priority="-1" mode="M714"/><axsl:template match="@*|node()" priority="-2" mode="M714"><axsl:apply-templates select="@*|*" mode="M714"/></axsl:template>

<!--PATTERN win-def_wmi57steresult-->


	<!--RULE -->
<axsl:template match="win-def:wmi57_state/win-def:result" priority="1000" mode="M715">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the result entity of a wmi57_object must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M715"/></axsl:template><axsl:template match="text()" priority="-1" mode="M715"/><axsl:template match="@*|node()" priority="-2" mode="M715"><axsl:apply-templates select="@*|*" mode="M715"/></axsl:template>

<!--PATTERN win-def_wuaupdatesearchertst-->


	<!--RULE -->
<axsl:template match="win-def:wuaupdatesearcher_test/win-def:object" priority="1001" mode="M716">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:wuaupdatesearcher_object/@id"/><axsl:otherwise>
                            <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the object child element of a wuaupdatesearcher_test must reference a wuaupdatesearcher_object
                        <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M716"/></axsl:template>

	<!--RULE -->
<axsl:template match="win-def:wuaupdatesearcher_test/win-def:state" priority="1000" mode="M716">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:wuaupdatesearcher_state/@id"/><axsl:otherwise>
                            <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the state child element of a wuaupdatesearcher_test must reference a wuaupdatesearcher_state
                        <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M716"/></axsl:template><axsl:template match="text()" priority="-1" mode="M716"/><axsl:template match="@*|node()" priority="-2" mode="M716"><axsl:apply-templates select="@*|*" mode="M716"/></axsl:template>

<!--PATTERN win-def_wuaupdatesearcher_object_verify_filter_state-->


	<!--RULE -->
<axsl:template match="win-def:wuaupdatesearcher_object//oval-def:filter" priority="1000" mode="M717"><axsl:variable name="parent_object" select="ancestor::win-def:wuaupdatesearcher_object"/><axsl:variable name="parent_object_id" select="$parent_object/@id"/><axsl:variable name="state_ref" select="."/><axsl:variable name="reffed_state" select="ancestor::oval-def:oval_definitions/oval-def:states/*[@id=$state_ref]"/><axsl:variable name="state_name" select="local-name($reffed_state)"/><axsl:variable name="state_namespace" select="namespace-uri($reffed_state)"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="(($state_namespace='http://oval.mitre.org/XMLSchema/oval-definitions-5#windows') and ($state_name='wuaupdatesearcher_state'))"/><axsl:otherwise>State referenced in filter for <axsl:text/><axsl:value-of select="name($parent_object)"/><axsl:text/> '<axsl:text/><axsl:value-of select="$parent_object_id"/><axsl:text/>' is of the wrong type. <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M717"/></axsl:template><axsl:template match="text()" priority="-1" mode="M717"/><axsl:template match="@*|node()" priority="-2" mode="M717"><axsl:apply-templates select="@*|*" mode="M717"/></axsl:template>

<!--PATTERN win-def_wuaupdatesearcherobjsearchcriteria-->


	<!--RULE -->
<axsl:template match="win-def:wuaupdatesearcher_object/win-def:search_criteria" priority="1000" mode="M718">

		<!--ASSERT -->
<axsl:choose><axsl:when test="not(@operation) or @operation='equals'"/><axsl:otherwise>
                                                        <axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - operation attribute for the search_criteria entity of a wuaupdatesearcher_object must be 'equals'
                                                    <axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M718"/></axsl:template><axsl:template match="text()" priority="-1" mode="M718"/><axsl:template match="@*|node()" priority="-2" mode="M718"><axsl:apply-templates select="@*|*" mode="M718"/></axsl:template>

<!--PATTERN win-def_sft_file_attribute_directory_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:states/win-def:file_state/win-def:type" priority="1000" mode="M719">

		<!--REPORT -->
<axsl:if test=".='FILE_ATTRIBUTE_DIRECTORY'">
                                                            DEPRECATED ELEMENT VALUE IN: file_state ELEMENT VALUE: <axsl:text/><axsl:value-of select="."/><axsl:text/>
                                                      <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M719"/></axsl:template><axsl:template match="text()" priority="-1" mode="M719"/><axsl:template match="@*|node()" priority="-2" mode="M719"><axsl:apply-templates select="@*|*" mode="M719"/></axsl:template>

<!--PATTERN win-def_ssr_stype_special_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:states/win-def:sharedresource_state/win-def:shared_type" priority="1000" mode="M720">

		<!--REPORT -->
<axsl:if test=".='STYPE_SPECIAL'">
                                                            DEPRECATED ELEMENT VALUE IN: sharedresource_state ELEMENT VALUE: <axsl:text/><axsl:value-of select="."/><axsl:text/>
                                                      <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M720"/></axsl:template><axsl:template match="text()" priority="-1" mode="M720"/><axsl:template match="@*|node()" priority="-2" mode="M720"><axsl:apply-templates select="@*|*" mode="M720"/></axsl:template>

<!--PATTERN win-def_ssr_stype_temporary_value_dep-->


	<!--RULE -->
<axsl:template match="oval-def:oval_definitions/oval-def:states/win-def:sharedresource_state/win-def:shared_type" priority="1000" mode="M721">

		<!--REPORT -->
<axsl:if test=".='STYPE_TEMPORARY'">
                                                            DEPRECATED ELEMENT VALUE IN: sharedresource_state ELEMENT VALUE: <axsl:text/><axsl:value-of select="."/><axsl:text/>
                                                      <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M721"/></axsl:template><axsl:template match="text()" priority="-1" mode="M721"/><axsl:template match="@*|node()" priority="-2" mode="M721"><axsl:apply-templates select="@*|*" mode="M721"/></axsl:template>

<!--PATTERN apache-sc_httpd_item_dep-->


	<!--RULE -->
<axsl:template match="apache-sc:httpd_item" priority="1000" mode="M722">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M722"/></axsl:template><axsl:template match="text()" priority="-1" mode="M722"/><axsl:template match="@*|node()" priority="-2" mode="M722"><axsl:apply-templates select="@*|*" mode="M722"/></axsl:template>

<!--PATTERN catos-sc_versionitemcatos_major_release-->


	<!--RULE -->
<axsl:template match="catos-sc:version_item/catos-sc:catos_major_release" priority="1000" mode="M723">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M723"/></axsl:template><axsl:template match="text()" priority="-1" mode="M723"/><axsl:template match="@*|node()" priority="-2" mode="M723"><axsl:apply-templates select="@*|*" mode="M723"/></axsl:template>

<!--PATTERN catos-sc_versionitemcatos_individual_release-->


	<!--RULE -->
<axsl:template match="catos-sc:version_item/catos-sc:catos_individual_release" priority="1000" mode="M724">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M724"/></axsl:template><axsl:template match="text()" priority="-1" mode="M724"/><axsl:template match="@*|node()" priority="-2" mode="M724"><axsl:apply-templates select="@*|*" mode="M724"/></axsl:template>

<!--PATTERN catos-sc_versionitemcatos_version_id-->


	<!--RULE -->
<axsl:template match="catos-sc:version_item/catos-sc:catos_version_id" priority="1000" mode="M725">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M725"/></axsl:template><axsl:template match="text()" priority="-1" mode="M725"/><axsl:template match="@*|node()" priority="-2" mode="M725"><axsl:apply-templates select="@*|*" mode="M725"/></axsl:template>

<!--PATTERN esx-sc_patchitempatch_number-->


	<!--RULE -->
<axsl:template match="esx-sc:patch_item/esx-sc:patch_number" priority="1000" mode="M726">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M726"/></axsl:template><axsl:template match="text()" priority="-1" mode="M726"/><axsl:template match="@*|node()" priority="-2" mode="M726"><axsl:apply-templates select="@*|*" mode="M726"/></axsl:template>

<!--PATTERN ind-sc_filehash_item_dep-->


	<!--RULE -->
<axsl:template match="ind-sc:filehash_item" priority="1000" mode="M727">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M727"/></axsl:template><axsl:template match="text()" priority="-1" mode="M727"/><axsl:template match="@*|node()" priority="-2" mode="M727"><axsl:apply-templates select="@*|*" mode="M727"/></axsl:template>

<!--PATTERN ind-sc_environmentvariable_item_dep-->


	<!--RULE -->
<axsl:template match="ind-sc:environmentvariable_item" priority="1000" mode="M728">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M728"/></axsl:template><axsl:template match="text()" priority="-1" mode="M728"/><axsl:template match="@*|node()" priority="-2" mode="M728"><axsl:apply-templates select="@*|*" mode="M728"/></axsl:template>

<!--PATTERN ind-sc_ldap57_item_dep-->


	<!--RULE -->
<axsl:template match="ind-sc:ldap57_item" priority="1000" mode="M729">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M729"/></axsl:template><axsl:template match="text()" priority="-1" mode="M729"/><axsl:template match="@*|node()" priority="-2" mode="M729"><axsl:apply-templates select="@*|*" mode="M729"/></axsl:template>

<!--PATTERN ind-sc_ldap57_itemvalue-->


	<!--RULE -->
<axsl:template match="ind-sc:ldap57_item/ind-sc:value" priority="1000" mode="M730">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the value entity of a ldap57_item must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M730"/></axsl:template><axsl:template match="text()" priority="-1" mode="M730"/><axsl:template match="@*|node()" priority="-2" mode="M730"><axsl:apply-templates select="@*|*" mode="M730"/></axsl:template>

<!--PATTERN ind-sc_sql_item_dep-->


	<!--RULE -->
<axsl:template match="ind-sc:sql_item" priority="1000" mode="M731">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M731"/></axsl:template><axsl:template match="text()" priority="-1" mode="M731"/><axsl:template match="@*|node()" priority="-2" mode="M731"><axsl:apply-templates select="@*|*" mode="M731"/></axsl:template>

<!--PATTERN ind-sc_sql57_itemresult-->


	<!--RULE -->
<axsl:template match="ind-sc:sql57_item/ind-sc:result" priority="1000" mode="M732">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the result entity of a sql57_item must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M732"/></axsl:template><axsl:template match="text()" priority="-1" mode="M732"/><axsl:template match="@*|node()" priority="-2" mode="M732"><axsl:apply-templates select="@*|*" mode="M732"/></axsl:template>

<!--PATTERN win-sc_tfc_i-->


	<!--RULE -->
<axsl:template match="win-sc:textfilecontent_item/win-sc:instance" priority="1000" mode="M733">

		<!--ASSERT -->
<axsl:choose><axsl:when test="string-length(.) = 0 or number(.) &lt; 1"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of instance must be greater than one<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M733"/></axsl:template><axsl:template match="text()" priority="-1" mode="M733"/><axsl:template match="@*|node()" priority="-2" mode="M733"><axsl:apply-templates select="@*|*" mode="M733"/></axsl:template>

<!--PATTERN ind-sc_txtitemline-->


	<!--RULE -->
<axsl:template match="ind-sc:textfilecontent_item/ind-sc:line" priority="1000" mode="M734">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M734"/></axsl:template><axsl:template match="text()" priority="-1" mode="M734"/><axsl:template match="@*|node()" priority="-2" mode="M734"><axsl:apply-templates select="@*|*" mode="M734"/></axsl:template>

<!--PATTERN ind-sc_ldaptype_timestamp_value_dep-->


	<!--RULE -->
<axsl:template match="oval-sc:oval_system_characteristics/oval-sc:system_data/ind-sc:ldap_item/ind-sc:ldaptype|oval-sc:oval_system_characteristics/oval-sc:system_data/ind-sc:ldap57_item/ind-sc:ldaptype" priority="1000" mode="M735">

		<!--REPORT -->
<axsl:if test=".='LDAPTYPE_TIMESTAMP'">
                                                       DEPRECATED ELEMENT VALUE IN: ldap_item ELEMENT VALUE: <axsl:text/><axsl:value-of select="."/><axsl:text/>
                                                  <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M735"/></axsl:template><axsl:template match="text()" priority="-1" mode="M735"/><axsl:template match="@*|node()" priority="-2" mode="M735"><axsl:apply-templates select="@*|*" mode="M735"/></axsl:template>

<!--PATTERN ind-sc_ldaptype_email_value_dep-->


	<!--RULE -->
<axsl:template match="oval-sc:oval_system_characteristics/oval-sc:system_data/ind-sc:ldap_item/ind-sc:ldaptype|oval-sc:oval_system_characteristics/oval-sc:system_data/ind-sc:ldap57_item/ind-sc:ldaptype" priority="1000" mode="M736">

		<!--REPORT -->
<axsl:if test=".='LDAPTYPE_EMAIL'">
                                                       DEPRECATED ELEMENT VALUE IN: ldap_item ELEMENT VALUE: <axsl:text/><axsl:value-of select="."/><axsl:text/>
                                                  <axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M736"/></axsl:template><axsl:template match="text()" priority="-1" mode="M736"/><axsl:template match="@*|node()" priority="-2" mode="M736"><axsl:apply-templates select="@*|*" mode="M736"/></axsl:template>

<!--PATTERN ios-sc_interfaceitemnoipdbc-->


	<!--RULE -->
<axsl:template match="ios-sc:interface_item/ios-sc:no_ip_directed_broadcast_command" priority="1000" mode="M737">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M737"/></axsl:template><axsl:template match="text()" priority="-1" mode="M737"/><axsl:template match="@*|node()" priority="-2" mode="M737"><axsl:apply-templates select="@*|*" mode="M737"/></axsl:template>

<!--PATTERN ios-sc_interfaceitem_urpf_command_dep-->


	<!--RULE -->
<axsl:template match="ios-sc:interface_item/ios-sc:urpf_command" priority="1000" mode="M738">

		<!--REPORT -->
<axsl:if test="true()">Warning: DEPRECATED ENTITY: <axsl:text/><axsl:value-of select="name()"/><axsl:text/>. This entity has been deprecated because it was replaced by the ipv4_urpf_command and ipv6_urpf_command entities.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M738"/></axsl:template><axsl:template match="text()" priority="-1" mode="M738"/><axsl:template match="@*|node()" priority="-2" mode="M738"><axsl:apply-templates select="@*|*" mode="M738"/></axsl:template>

<!--PATTERN ios-sc_versionitemmajor_release-->


	<!--RULE -->
<axsl:template match="ios-sc:version_item/ios-sc:major_release" priority="1000" mode="M739">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M739"/></axsl:template><axsl:template match="text()" priority="-1" mode="M739"/><axsl:template match="@*|node()" priority="-2" mode="M739"><axsl:apply-templates select="@*|*" mode="M739"/></axsl:template>

<!--PATTERN ios-sc_versionitemtrain_number-->


	<!--RULE -->
<axsl:template match="ios-sc:version_item/ios-sc:train_number" priority="1000" mode="M740">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M740"/></axsl:template><axsl:template match="text()" priority="-1" mode="M740"/><axsl:template match="@*|node()" priority="-2" mode="M740"><axsl:apply-templates select="@*|*" mode="M740"/></axsl:template>

<!--PATTERN linux-sc_dpkginfoitemevrstring_id-->


	<!--RULE -->
<axsl:template match="linux-sc:dpkginfo_item/linux-sc:evr" priority="1000" mode="M741">

		<!--REPORT -->
<axsl:if test="@datatype='evr_string'"><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> Warning: There are differences in the algorithms for how the version strings of Debian and RPM packages are compared. As a result, a new debian_evr_string datatype was added to the OVAL Language and should be used, for this entity, instead of the evr_string datatype.<axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M741"/></axsl:template><axsl:template match="text()" priority="-1" mode="M741"/><axsl:template match="@*|node()" priority="-2" mode="M741"><axsl:apply-templates select="@*|*" mode="M741"/></axsl:template>

<!--PATTERN linux-sc_rpmverify_item_dep-->


	<!--RULE -->
<axsl:template match="linux-sc:rpmverify_item" priority="1000" mode="M742">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M742"/></axsl:template><axsl:template match="text()" priority="-1" mode="M742"/><axsl:template match="@*|node()" priority="-2" mode="M742"><axsl:apply-templates select="@*|*" mode="M742"/></axsl:template>

<!--PATTERN linux-sc_rpmverifypackage_dicp_dep-->


	<!--RULE -->
<axsl:template match="linux-sc:rpmverifypackage_item/linux-sc:digest_check_passed" priority="1000" mode="M743">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="../@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M743"/></axsl:template><axsl:template match="text()" priority="-1" mode="M743"/><axsl:template match="@*|node()" priority="-2" mode="M743"><axsl:apply-templates select="@*|*" mode="M743"/></axsl:template>

<!--PATTERN linux-sc_rpmverifypackage_sigcp_dep-->


	<!--RULE -->
<axsl:template match="linux-sc:rpmverifypackage_item/linux-sc:signature_check_passed" priority="1000" mode="M744">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="../@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M744"/></axsl:template><axsl:template match="text()" priority="-1" mode="M744"/><axsl:template match="@*|node()" priority="-2" mode="M744"><axsl:apply-templates select="@*|*" mode="M744"/></axsl:template>

<!--PATTERN macos-sc_inetlisteningserveritem_dep-->


	<!--RULE -->
<axsl:template match="macos-sc:inetlisteningserver_item" priority="1000" mode="M745">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M745"/></axsl:template><axsl:template match="text()" priority="-1" mode="M745"/><axsl:template match="@*|node()" priority="-2" mode="M745"><axsl:apply-templates select="@*|*" mode="M745"/></axsl:template>

<!--PATTERN macos-sc_plistitem_dep-->


	<!--RULE -->
<axsl:template match="macos-sc:plist_item" priority="1000" mode="M746">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M746"/></axsl:template><axsl:template match="text()" priority="-1" mode="M746"/><axsl:template match="@*|node()" priority="-2" mode="M746"><axsl:apply-templates select="@*|*" mode="M746"/></axsl:template>

<!--PATTERN macos-sc_pwpolicy_item_dep-->


	<!--RULE -->
<axsl:template match="macos-sc:pwpolicy_item" priority="1000" mode="M747">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M747"/></axsl:template><axsl:template match="text()" priority="-1" mode="M747"/><axsl:template match="@*|node()" priority="-2" mode="M747"><axsl:apply-templates select="@*|*" mode="M747"/></axsl:template>

<!--PATTERN sp-sc_spjobdefinition_item_dep-->


	<!--RULE -->
<axsl:template match="sp-sc:spjobdefinition_item" priority="1000" mode="M748">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M748"/></axsl:template><axsl:template match="text()" priority="-1" mode="M748"/><axsl:template match="@*|node()" priority="-2" mode="M748"><axsl:apply-templates select="@*|*" mode="M748"/></axsl:template>

<!--PATTERN unix-sc_file_gid-->


	<!--RULE -->
<axsl:template match="unix-sc:file_item/unix-sc:group_id" priority="1000" mode="M749">

		<!--ASSERT -->
<axsl:choose><axsl:when test="string-length(.) = 0 or number(.) &lt; 0"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of group_id must be greater than zero<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M749"/></axsl:template><axsl:template match="text()" priority="-1" mode="M749"/><axsl:template match="@*|node()" priority="-2" mode="M749"><axsl:apply-templates select="@*|*" mode="M749"/></axsl:template>

<!--PATTERN unix-sc_file_uid-->


	<!--RULE -->
<axsl:template match="unix-sc:file_item/unix-sc:user_id" priority="1000" mode="M750">

		<!--ASSERT -->
<axsl:choose><axsl:when test="string-length(.) = 0 or number(.) &lt; 0"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of user_id must be greater than zero<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M750"/></axsl:template><axsl:template match="text()" priority="-1" mode="M750"/><axsl:template match="@*|node()" priority="-2" mode="M750"><axsl:apply-templates select="@*|*" mode="M750"/></axsl:template>

<!--PATTERN unix-sc_processitem_dep-->


	<!--RULE -->
<axsl:template match="unix-sc:process_item" priority="1000" mode="M751">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M751"/></axsl:template><axsl:template match="text()" priority="-1" mode="M751"/><axsl:template match="@*|node()" priority="-2" mode="M751"><axsl:apply-templates select="@*|*" mode="M751"/></axsl:template>

<!--PATTERN unix-sc_sccsitem_dep-->


	<!--RULE -->
<axsl:template match="unix-sc:sccs_item" priority="1000" mode="M752">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M752"/></axsl:template><axsl:template match="text()" priority="-1" mode="M752"/><axsl:template match="@*|node()" priority="-2" mode="M752"><axsl:apply-templates select="@*|*" mode="M752"/></axsl:template>

<!--PATTERN win-sc_accesstoken_item_dep-->


	<!--RULE -->
<axsl:template match="win-sc:accesstoken_item" priority="1000" mode="M753">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M753"/></axsl:template><axsl:template match="text()" priority="-1" mode="M753"/><axsl:template match="@*|node()" priority="-2" mode="M753"><axsl:apply-templates select="@*|*" mode="M753"/></axsl:template>

<!--PATTERN win-sc_activedirectory57_item_dep-->


	<!--RULE -->
<axsl:template match="win-sc:activedirectory57_item" priority="1000" mode="M754">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M754"/></axsl:template><axsl:template match="text()" priority="-1" mode="M754"/><axsl:template match="@*|node()" priority="-2" mode="M754"><axsl:apply-templates select="@*|*" mode="M754"/></axsl:template>

<!--PATTERN win-sc_activedirectory57_itemvalue-->


	<!--RULE -->
<axsl:template match="win-sc:activedirectory57_item/win-sc:value" priority="1000" mode="M755">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the value entity of a activedirectory57_item must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M755"/></axsl:template><axsl:template match="text()" priority="-1" mode="M755"/><axsl:template match="@*|node()" priority="-2" mode="M755"><axsl:apply-templates select="@*|*" mode="M755"/></axsl:template>

<!--PATTERN win-sc_auditeventpolicysubcategoriesitemkerberos_ticket_events-->


	<!--RULE -->
<axsl:template match="win-sc:auditeventpolicysubcategories_item/win-sc:kerberos_ticket_events" priority="1000" mode="M756">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M756"/></axsl:template><axsl:template match="text()" priority="-1" mode="M756"/><axsl:template match="@*|node()" priority="-2" mode="M756"><axsl:apply-templates select="@*|*" mode="M756"/></axsl:template>

<!--PATTERN win-sc_cmdletitemparameters-->


	<!--RULE -->
<axsl:template match="win-sc:cmdlet_item/win-sc:parameters" priority="1000" mode="M757">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the parameters entity of a cmdlet_item must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M757"/></axsl:template><axsl:template match="text()" priority="-1" mode="M757"/><axsl:template match="@*|node()" priority="-2" mode="M757"><axsl:apply-templates select="@*|*" mode="M757"/></axsl:template>

<!--PATTERN win-sc_cmdletitemselect-->


	<!--RULE -->
<axsl:template match="win-sc:cmdlet_item/win-sc:select" priority="1000" mode="M758">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the select entity of a cmdlet_item must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M758"/></axsl:template><axsl:template match="text()" priority="-1" mode="M758"/><axsl:template match="@*|node()" priority="-2" mode="M758"><axsl:apply-templates select="@*|*" mode="M758"/></axsl:template>

<!--PATTERN win-sc_cmdletitemvalue-->


	<!--RULE -->
<axsl:template match="win-sc:cmdlet_item/win-sc:value" priority="1000" mode="M759">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the value entity of a cmdlet_item must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M759"/></axsl:template><axsl:template match="text()" priority="-1" mode="M759"/><axsl:template match="@*|node()" priority="-2" mode="M759"><axsl:apply-templates select="@*|*" mode="M759"/></axsl:template>

<!--PATTERN win-sc_fileaudititemtrustee_name-->


	<!--RULE -->
<axsl:template match="win-sc:fileauditedpermissions_item/win-sc:trustee_name" priority="1000" mode="M760">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M760"/></axsl:template><axsl:template match="text()" priority="-1" mode="M760"/><axsl:template match="@*|node()" priority="-2" mode="M760"><axsl:apply-templates select="@*|*" mode="M760"/></axsl:template>

<!--PATTERN win-sc_feritemtrustee_name-->


	<!--RULE -->
<axsl:template match="win-sc:fileeffectiverights_item/win-sc:trustee_name" priority="1000" mode="M761">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M761"/></axsl:template><axsl:template match="text()" priority="-1" mode="M761"/><axsl:template match="@*|node()" priority="-2" mode="M761"><axsl:apply-templates select="@*|*" mode="M761"/></axsl:template>

<!--PATTERN win-sc_group_item_dep-->


	<!--RULE -->
<axsl:template match="win-sc:group_item" priority="1000" mode="M762">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M762"/></axsl:template><axsl:template match="text()" priority="-1" mode="M762"/><axsl:template match="@*|node()" priority="-2" mode="M762"><axsl:apply-templates select="@*|*" mode="M762"/></axsl:template>

<!--PATTERN win-sc_lpi_fl-->


	<!--RULE -->
<axsl:template match="win-sc:lockoutpolicy_item/win-sc:force_logoff" priority="1000" mode="M763">

		<!--ASSERT -->
<axsl:choose><axsl:when test="string-length(.) = 0 or number(.) &lt; 0"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of force_logoff must be greater than or equal to zero<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M763"/></axsl:template><axsl:template match="text()" priority="-1" mode="M763"/><axsl:template match="@*|node()" priority="-2" mode="M763"><axsl:apply-templates select="@*|*" mode="M763"/></axsl:template>

<!--PATTERN win-sc_lpi_ld-->


	<!--RULE -->
<axsl:template match="win-sc:lockoutpolicy_item/win-sc:lockout_duration" priority="1000" mode="M764">

		<!--ASSERT -->
<axsl:choose><axsl:when test="string-length(.) = 0 or number(.) &lt; 0"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of lockout_duration must be greater than or equal to zero<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M764"/></axsl:template><axsl:template match="text()" priority="-1" mode="M764"/><axsl:template match="@*|node()" priority="-2" mode="M764"><axsl:apply-templates select="@*|*" mode="M764"/></axsl:template>

<!--PATTERN win-sc_pwp_mpa-->


	<!--RULE -->
<axsl:template match="win-sc:passwordpolicy_item/win-sc:max_passwd_age" priority="1000" mode="M765">

		<!--ASSERT -->
<axsl:choose><axsl:when test="number(.) &lt; 0"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - the value of max_passwd_age must be greater than or equal to zero<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M765"/></axsl:template><axsl:template match="text()" priority="-1" mode="M765"/><axsl:template match="@*|node()" priority="-2" mode="M765"><axsl:apply-templates select="@*|*" mode="M765"/></axsl:template>

<!--PATTERN win-sc_rapitemtrustee_name-->


	<!--RULE -->
<axsl:template match="win-sc:regkeyauditedpermissions_item/win-sc:trustee_name" priority="1000" mode="M766">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M766"/></axsl:template><axsl:template match="text()" priority="-1" mode="M766"/><axsl:template match="@*|node()" priority="-2" mode="M766"><axsl:apply-templates select="@*|*" mode="M766"/></axsl:template>

<!--PATTERN win-sc_rapitemstandard_synchronize-->


	<!--RULE -->
<axsl:template match="win-sc:regkeyauditedpermissions_item/win-sc:standard_synchronize" priority="1000" mode="M767">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M767"/></axsl:template><axsl:template match="text()" priority="-1" mode="M767"/><axsl:template match="@*|node()" priority="-2" mode="M767"><axsl:apply-templates select="@*|*" mode="M767"/></axsl:template>

<!--PATTERN win-sc_reritemtrustee_name-->


	<!--RULE -->
<axsl:template match="win-sc:regkeyeffectiverights_item/win-sc:trustee_name" priority="1000" mode="M768">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M768"/></axsl:template><axsl:template match="text()" priority="-1" mode="M768"/><axsl:template match="@*|node()" priority="-2" mode="M768"><axsl:apply-templates select="@*|*" mode="M768"/></axsl:template>

<!--PATTERN win-sc_reritemstandard_synchronize-->


	<!--RULE -->
<axsl:template match="win-sc:regkeyeffectiverights_item/win-sc:standard_synchronize" priority="1000" mode="M769">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ELEMENT: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M769"/></axsl:template><axsl:template match="text()" priority="-1" mode="M769"/><axsl:template match="@*|node()" priority="-2" mode="M769"><axsl:apply-templates select="@*|*" mode="M769"/></axsl:template>

<!--PATTERN win-sc_user_item_dep-->


	<!--RULE -->
<axsl:template match="win-sc:user_item" priority="1000" mode="M770">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M770"/></axsl:template><axsl:template match="text()" priority="-1" mode="M770"/><axsl:template match="@*|node()" priority="-2" mode="M770"><axsl:apply-templates select="@*|*" mode="M770"/></axsl:template>

<!--PATTERN win-sc_wmi_item_dep-->


	<!--RULE -->
<axsl:template match="win-sc:wmi_item" priority="1000" mode="M771">

		<!--REPORT -->
<axsl:if test="true()">DEPRECATED ITEM: <axsl:text/><axsl:value-of select="name()"/><axsl:text/> ID: <axsl:text/><axsl:value-of select="@id"/><axsl:text/><axsl:value-of select="string('&#10;')"/></axsl:if><axsl:apply-templates select="@*|*" mode="M771"/></axsl:template><axsl:template match="text()" priority="-1" mode="M771"/><axsl:template match="@*|node()" priority="-2" mode="M771"><axsl:apply-templates select="@*|*" mode="M771"/></axsl:template>

<!--PATTERN win-sc_wmi57_itemresult-->


	<!--RULE -->
<axsl:template match="win-sc:wmi57_item/win-sc:result" priority="1000" mode="M772">

		<!--ASSERT -->
<axsl:choose><axsl:when test="@datatype='record'"/><axsl:otherwise><axsl:text/><axsl:value-of select="../@id"/><axsl:text/> - datatype attribute for the result entity of a wmi57_item must be 'record'<axsl:value-of select="string('&#10;')"/></axsl:otherwise></axsl:choose><axsl:apply-templates select="@*|*" mode="M772"/></axsl:template><axsl:template match="text()" priority="-1" mode="M772"/><axsl:template match="@*|node()" priority="-2" mode="M772"><axsl:apply-templates select="@*|*" mode="M772"/></axsl:template></axsl:stylesheet>
