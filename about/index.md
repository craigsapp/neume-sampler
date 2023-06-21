---
layout: page
title: "About"
---

This website demonstrates how to create a neume sampler
and was created for the FCT-funded research project
<a target="_blank" href="">Echoes from the Past: Unveiling a Lost Soundscape with Digital
Analysis</a> (ECHOES) (2022.01957.PTDC) running from 03/2023-02/2026, run
by co-PIs 
<a target="_blank" href="https://cesem.fcsh.unl.pt/en/pessoa/elsa-de-luca-2/">Elsa de Luca<a/> 
and 
<a target="_blank" href="https://cesem.fcsh.unl.pt/en/pessoa/manuel-pedro-ferreira-en">Manuel Pedro Ferreira<a/> at the
<a target="_blank" href="">Centro de estudios de sociologia e estética musical</a> (CESEM) in Lisbon, Portugal.

There are three steps to create the website which are outlined below.  These steps are covered in
more detail in the slides of a 
<a target="_blank" href="https://bit.ly/iiif-neume-workshop-202307">workshop</a> held 19 & 20 July 2023
at <a target="_blank" href="https://sites.google.com/view/lostandfoundcolloquium/home?authuser=0">Lost &amp; Found: Traces of Early Music: An International Colloquium on Fragmentology</a> in Cascais, Portugal.


<iframe style="width:100%; height:450px; horizontal-align:center;" src="https://docs.google.com/presentation/d/e/2PACX-1vT1ILTNFQVgOiLWOzqfLXuRjnouIy3VQbxVg3s_K7C71YbzzQAGwDo2pEMDfBPSjkpEhQSvX-7K58Ow/embed?start=true&loop=true&delayms=5000" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>


<div style="height:30px"></div>


(1) A manuscript source needs to be available on the web hosted on a <a
target="_blank" href="https://iiif.io/">IIIF</a> server.  For the
demo neume sampler, an <a target="_blank"
href="https://searchworks.stanford.edu/view/hj504pg5511">antiphonal from
the parish at Santa Maria sopra Porta</a> (Florence, Italy, c.1430) scanned at Stanford University Libraries was 
used.  At the bottom of the image viewer on that page is a link to a
<a target="_blank" href="https://purl.stanford.edu/hj504pg5511/iiif/manifest">IIIF manifest<a/> should be dragged-and-dropped onto the website
<a target="_blank" href="https://iiif.humdrum.org">iiif.humdrum.org</a>.  Annotation boxes
can then be drawn around neumes or other interesting graphical items, and the 
annotations can be copied and placed into a spreadsheet.

(2) A <a target="_blank"
href="https://bit.ly/neume-spreadsheet-demo-202307">demo Google
Spreadsheet</a> was created to store the annotations created on <a
target="_blank" href="https://iiif.humdrum.org">iiif.humdrum.org</a>:

<iframe style="height:400px; width:100%" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vT8gsudWsbjrSlhQSNKbk-yo4X3_dbIlGtb-Cl_u8sl8SSLjWiOS7iK4cB1wLKOYIfhLK96EYGK8b17/pubhtml?gid=0&amp;single=true&amp;widget=true&amp;headers=false"></iframe>

Annotations from <a target="_blank"
href="https://iiif.humdrum.org">iiif.humdrum.org</a> are copied
into the <b>IIIF summary</b> column, and along with the <b>Image
URL</b> column link, the image of the neume (or interesting notational
element) can be displayed automatically in the <b>Image</b> column.
Data entry is done in the columns, while white columns are automatically
generated with spreadsheet equations.

(3) Data from the spreadsheet can be converted to JSON data using a Google Apps Script (source
code is given in the workshop slides along with the steps to install it).  This will allow accessing
the spreadsheet data from a <a target="_blank" href="https://script.google.com/macros/s/AKfycbz6DgWXf77ZfXe7DcYa7tIvyc3ZPFtBZChkqwyTZmIpu9VaCCbhWRgBjHAxMuHAwQjG/exec">JSON</a> URL, which can be used to
generate samples of neumes on the website.

(4) This sample website is hosted on <a target="_blank"
href="https://pages.github.com"> Github Pages</a>, with all files
for the website stored in <a target="_blank"
href="https://github.com/craigsapp/neume-sampler">this Github
repository</a>, which can also be copied and adapted for your own
neume sampler website.   In addition, the website files can be
downloaded and run on your local computer.  JSON data from the Google Spreadsheet
is loaded directly by the website, so if you make changes to the spreadsheet, reloading
the website will display the updates immediately.  Javascript is used to dynamically
generate content for the website based on the JSON data of the neume data.

For faster loading (after data entry has finished), the JSON data can be downloaded
to the website repository to be inserted directly into the Javascript code.  This will
avoid the time it takes to convert the spreadsheet into JSON data.




