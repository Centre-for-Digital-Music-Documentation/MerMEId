xquery version "1.0" encoding "UTF-8";

declare namespace transform="http://exist-db.org/xquery/transform";
declare namespace request="http://exist-db.org/xquery/request";
declare namespace response="http://exist-db.org/xquery/response";
declare namespace fn="http://www.w3.org/2005/xpath-functions";
declare namespace file="http://exist-db.org/xquery/file";
declare namespace util="http://exist-db.org/xquery/util";
declare namespace app="http://kb.dk/this/app";
declare namespace m="http://www.music-encoding.org/ns/mei";
declare namespace ft="http://exist-db.org/xquery/lucene";

declare option exist:serialize "method=xml media-type=text/html"; 
declare variable $document := request:get-parameter("doc", "");
declare variable $language := request:get-parameter("language", "");
declare variable $score := request:get-parameter("score", "");
declare variable $xsl := request:get-parameter("xsl", "mei_to_html.xsl");

let $host := request:get-header('HOST')
let $list := 
for $doc in collection("/db/dcm")
where util:document-name($doc)=$document
return $doc

let $params := 
<parameters>
   <param name="hostname" value="{$host}"/>
   <param name="doc" value="{$document}"/>
   <param name="language" value="{$language}"/>
   <param name="score" value="{$score}"/>
</parameters>

for $doc in $list
return 
if(request:get-parameter("debug","")) then
(<d>{$params}{doc(concat("/db/style/",$xsl))}</d>)
else
transform:transform($doc,doc(concat("/db/style/",$xsl)),$params)

 
