�H  condorthemes.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                /cleanzone/js/jquery.datatables/examples/advanced_init/events_pre_init.html                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     C:/Users/User/Desktop/clean/test/condorthemes.com/cleanzone/js/jquery.datatables/examples/advanced_init/events_pre_init.html                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    condorthemes.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                /cleanzone/js/jquery.datatables/examples/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           C:\Users\User\AppData\Local\Temp\httrack_temporaryGzipFile_487                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x       �*S    ����            �����������������                          xz�        oT      OK                                                                              text/html                                                                                                                       gzip                                                            q�    oT          ����   ���}                                                                                                                                       Tue, 11 Feb 2014 01:13:45 GMT                                                                                                                                                                                                                                                                                                                                                                                                         Mozilla/4.5 (compatible; HTTrack 3.0x; Windows 98)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              es, en, *                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               �*S                          ���������                                                                                                                                                                                                                                                                                    oT  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link rel="shortcut icon" type="image/ico" href="http://www.datatables.net/media/images/favicon.ico" />
		
		<title>DataTables example</title>
		<style type="text/css" title="currentStyle">
			@import "../../media/css/demo_page.css";
			@import "../../media/css/demo_table.css";
			@import "../examples_support/jquery.tooltip.css";
		</style>
		<script type="text/javascript" language="javascript" src="../../media/js/jquery.js"></script>
		<script type="text/javascript" language="javascript" src="../../media/js/jquery.dataTables.js"></script>
		<script type="text/javascript" language="javascript" src="../examples_support/jquery.tooltip.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				/*
				 * First step is to create title attributes for the rows in the table
				 * This isn't needed if the required 'title' attribute is already set in the HTML in the
				 * DOM 
				 */
				$('#example tbody tr').each( function() {
					var sTitle;
					var nTds = $('td', this);
					var sBrowser = $(nTds[1]).text();
					var sGrade = $(nTds[4]).text();
					
					if ( sGrade == "A" )
						sTitle =  sBrowser+' will provide a first class (A) level of CSS support.';
					else if ( sGrade == "C" )
						sTitle = sBrowser+' will provide a core (C) level of CSS support.';
					else if ( sGrade == "X" )
						sTitle = sBrowser+' does not provide CSS support or has a broken implementation. Block CSS.';
					else
						sTitle = sBrowser+' will provide an undefined level of CSS support.';
					
					this.setAttribute( 'title', sTitle );
				} );
				
				/* Apply the tooltips */
				$('#example tbody tr[title]').tooltip( {
					"delay": 0,
					"track": true,
					"fade": 250
				} );
				
				/* Init DataTables */
				$('#example').dataTable();
			} );
		</script>
	</head>
	<body id="dt_example">
		<div id="container">
			<div class="full_width big">
				DataTables events (pre-initialisation) example
			</div>
			
			<h1>Preamble</h1>
			<p>Events which are assigned to the table elements are retained by DataTables such that they will still work as you would expect, even after changing the sort order etc. (no need to reapply the event handlers). If you apply the event handlers before you initialise DataTables, you just do this in the normal way. This is shown in this example where the call <b>$('#example tbody tr[title]').tooltip();</b> is made before the table is initialised.</p>
			
			<h1>Live example</h1>
			<div id="demo">
<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
	<thead>
		<tr>
			<th>Rendering engine</th>
			<th>Browser</th>
			<th>Platform(s)</th>
			<th>Engine version</th>
			<th>CSS grade</th>
		</tr>
	</thead>
	<tbody>
		<tr class="gradeX">
			<td>Trident</td>
			<td>Internet
				 Explorer 
				4.0
				</td>
			<td>Win 95+</td>
			<td class="center">4</td>
			<td class="center">X</td>
		</tr>
		<tr class="gradeC">
			<td>Trident</td>
			<td>Internet
				 Explorer 5.0</td>
			<td>Win 95+</td>
			<td class="center">5</td>
			<td class="center">C</td>
		</tr>
		<tr class="gradeA">
			<td>Trident</td>
			<td>Internet
				 Explorer 5.5</td>
			<td>Win 95+</td>
			<td class="center">5.5</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Trident</td>
			<td>Internet
				 Explorer 6</td>
			<td>Win 98+</td>
			<td class="center">6</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Trident</td>
			<td>Internet Explorer 7</td>
			<td>Win XP SP2+</td>
			<td class="center">7</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Trident</td>
			<td>AOL browser (AOL desktop)</td>
			<td>Win XP</td>
			<td class="center">6</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Firefox 1.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.7</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Firefox 1.5</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Firefox 2.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Firefox 3.0</td>
			<td>Win 2k+ / OSX.3+</td>
			<td class="center">1.9</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Camino 1.0</td>
			<td>OSX.2+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Camino 1.5</td>
			<td>OSX.3+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Netscape 7.2</td>
			<td>Win 95+ / Mac OS 8.6-9.2</td>
			<td class="center">1.7</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Netscape Browser 8</td>
			<td>Win 98SE+</td>
			<td class="center">1.7</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Netscape Navigator 9</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Mozilla 1.0</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Mozilla 1.1</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.1</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Mozilla 1.2</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.2</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Mozilla 1.3</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.3</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Mozilla 1.4</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.4</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Mozilla 1.5</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.5</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Mozilla 1.6</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.6</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Mozilla 1.7</td>
			<td>Win 98+ / OSX.1+</td>
			<td class="center">1.7</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Mozilla 1.8</td>
			<td>Win 98+ / OSX.1+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Seamonkey 1.1</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Gecko</td>
			<td>Epiphany 2.20</td>
			<td>Gnome</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Webkit</td>
			<td>Safari 1.2</td>
			<td>OSX.3</td>
			<td class="center">125.5</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Webkit</td>
			<td>Safari 1.3</td>
			<td>OSX.3</td>
			<td class="center">312.8</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Webkit</td>
			<td>Safari 2.0</td>
			<td>OSX.4+</td>
			<td class="center">419.3</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Webkit</td>
			<td>Safari 3.0</td>
			<td>OSX.4+</td>
			<td class="center">522.1</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Webkit</td>
			<td>OmniWeb 5.5</td>
			<td>OSX.4+</td>
			<td class="center">420</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Webkit</td>
			<td>iPod Touch / iPhone</td>
			<td>iPod</td>
			<td class="center">420.1</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Webkit</td>
			<td>S60</td>
			<td>S60</td>
			<td class="center">413</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Presto</td>
			<td>Opera 7.0</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">-</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Presto</td>
			<td>Opera 7.5</td>
			<td>Win 95+ / OSX.2+</td>
			<td class="center">-</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Presto</td>
			<td>Opera 8.0</td>
			<td>Win 95+ / OSX.2+</td>
			<td class="center">-</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Presto</td>
			<td>Opera 8.5</td>
			<td>Win 95+ / OSX.2+</td>
			<td class="center">-</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Presto</td>
			<td>Opera 9.0</td>
			<td>Win 95+ / OSX.3+</td>
			<td class="center">-</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Presto</td>
			<td>Opera 9.2</td>
			<td>Win 88+ / OSX.3+</td>
			<td class="center">-</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Presto</td>
			<td>Opera 9.5</td>
			<td>Win 88+ / OSX.3+</td>
			<td class="center">-</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Presto</td>
			<td>Opera for Wii</td>
			<td>Wii</td>
			<td class="center">-</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Presto</td>
			<td>Nokia N800</td>
			<td>N800</td>
			<td class="center">-</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>Presto</td>
			<td>Nintendo DS browser</td>
			<td>Nintendo DS</td>
			<td class="center">8.5</td>
			<td class="center">C/A<sup>1</sup></td>
		</tr>
		<tr class="gradeC">
			<td>KHTML</td>
			<td>Konqureror 3.1</td>
			<td>KDE 3.1</td>
			<td class="center">3.1</td>
			<td class="center">C</td>
		</tr>
		<tr class="gradeA">
			<td>KHTML</td>
			<td>Konqureror 3.3</td>
			<td>KDE 3.3</td>
			<td class="center">3.3</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeA">
			<td>KHTML</td>
			<td>Konqureror 3.5</td>
			<td>KDE 3.5</td>
			<td class="center">3.5</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeX">
			<td>Tasman</td>
			<td>Internet Explorer 4.5</td>
			<td>Mac OS 8-9</td>
			<td class="center">-</td>
			<td class="center">X</td>
		</tr>
		<tr class="gradeC">
			<td>Tasman</td>
			<td>Internet Explorer 5.1</td>
			<td>Mac OS 7.6-9</td>
			<td class="center">1</td>
			<td class="center">C</td>
		</tr>
		<tr class="gradeC">
			<td>Tasman</td>
			<td>Internet Explorer 5.2</td>
			<td>Mac OS 8-X</td>
			<td class="center">1</td>
			<td class="center">C</td>
		</tr>
		<tr class="gradeA">
			<td>Misc</td>
			<td>NetFront 3.1</td>
			<td>Embedded devices</td>
			<td class="center">-</td>
			<td class="center">C</td>
		</tr>
		<tr class="gradeA">
			<td>Misc</td>
			<td>NetFront 3.4</td>
			<td>Embedded devices</td>
			<td class="center">-</td>
			<td class="center">A</td>
		</tr>
		<tr class="gradeX">
			<td>Misc</td>
			<td>Dillo 0.8</td>
			<td>Embedded devices</td>
			<td class="center">-</td>
			<td class="center">X</td>
		</tr>
		<tr class="gradeX">
			<td>Misc</td>
			<td>Links</td>
			<td>Text only</td>
			<td class="center">-</td>
			<td class="center">X</td>
		</tr>
		<tr class="gradeX">
			<td>Misc</td>
			<td>Lynx</td>
			<td>Text only</td>
			<td class="center">-</td>
			<td class="center">X</td>
		</tr>
		<tr class="gradeC">
			<td>Misc</td>
			<td>IE Mobile</td>
			<td>Windows Mobile 6</td>
			<td class="center">-</td>
			<td class="center">C</td>
		</tr>
		<tr class="gradeC">
			<td>Misc</td>
			<td>PSP browser</td>
			<td>PSP</td>
			<td class="center">-</td>
			<td class="center">C</td>
		</tr>
		<tr class="gradeU">
			<td>Other browsers</td>
			<td>All others</td>
			<td>-</td>
			<td class="center">-</td>
			<td class="center">U</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<th>Rendering engine</th>
			<th>Browser</th>
			<th>Platform(s)</th>
			<th>Engine version</th>
			<th>CSS grade</th>
		</tr>
	</tfoot>
</table>
			</div>
			<div class="spacer"></div>
			
			
			<h1>Initialisation code</h1>
			<pre class="brush: js;">$(document).ready(function() {
	/*
	 * First step is to create title attributes for the rows in the table
	 * This isn't needed if the required 'title' attribute is already set in the HTML in the
	 * DOM 
	 */
	$('#example tbody tr').each( function() {
		var sTitle;
		var nTds = $('td', this);
		var sBrowser = $(nTds[1]).text();
		var sGrade = $(nTds[4]).text();
		
		if ( sGrade == "A" )
			sTitle =  sBrowser+' will provide a first class (A) level of CSS support.';
		else if ( sGrade == "C" )
			sTitle = sBrowser+' will provide a core (C) level of CSS support.';
		else if ( sGrade == "X" )
			sTitle = sBrowser+' does not provide CSS support or has a broken implementation. Block CSS.';
		else
			sTitle = sBrowser+' will provide an undefined level of CSS support.';
		
		this.setAttribute( 'title', sTitle );
	} );
	
	/* Apply the tooltips */
	$('#example tbody tr[title]').tooltip( {
		"delay": 0,
		"track": true,
		"fade": 250
	} );
	
	/* Init DataTables */
	$('#example').dataTable();
} );</pre>
			<style type="text/css">
				@import "../examples_support/syntax/css/shCore.css";
			</style>
			<script type="text/javascript" language="javascript" src="../examples_support/syntax/js/shCore.js"></script>
			
			
			<h1>Other examples</h1>
			<div class="demo_links">
				<h2>Basic initialisation</h2>
				<ul>
					<li><a href="../basic_init/zero_config.html">Zero configuration</a></li>
					<li><a href="../basic_init/filter_only.html">Feature enablement</a></li>
					<li><a href="../basic_init/table_sorting.html">Sorting data</a></li>
					<li><a href="../basic_init/multi_col_sort.html">Multi-column sorting</a></li>
					<li><a href="../basic_init/multiple_tables.html">Multiple tables</a></li>
					<li><a href="../basic_init/hidden_columns.html">Hidden columns</a></li>
					<li><a href="../basic_init/complex_header.html">Complex headers - grouping with colspan</a></li>
					<li><a href="../basic_init/dom.html">DOM positioning</a></li>
					<li><a href="../basic_init/flexible_width.html">Flexible table width</a></li>
					<li><a href="../basic_init/state_save.html">State saving</a></li>
					<li><a href="../basic_init/alt_pagination.html">Alternative pagination styles</a></li>
					<li>Scrolling: <br>
						<a href="../basic_init/scroll_x.html">Horizontal</a> / 
						<a href="../basic_init/scroll_y.html">Vertical</a> / 
						<a href="../basic_init/scroll_xy.html">Both</a> / 
						<a href="../basic_init/scroll_y_theme.html">Themed</a> / 
						<a href="../basic_init/scroll_y_infinite.html">Infinite</a>
					</li>
					<li><a href="../basic_init/language.html">Change language information (internationalisation)</a></li>
					<li><a href="../basic_init/themes.html">ThemeRoller themes (Smoothness)</a></li>
				</ul>
				
				<h2>Advanced initialisation</h2>
				<ul>
					<li>Events: <br>
						<a href="../advanced_init/events_live.html">Live events</a> / 
						<a href="../advanced_init/events_pre_init.html">Pre-init</a> / 
						<a href="../advanced_init/events_post_init.html">Post-init</a>
					</li>
					<li><a href="../advanced_init/column_render.html">Column rendering</a></li>
					<li><a href="../advanced_init/html_sort.html">Sorting without HTML tags</a></li>
					<li><a href="../advanced_init/dom_multiple_elements.html">Multiple table controls (sDom)</a></li>
					<li><a href="../advanced_init/length_menu.html">Defining length menu options</a></li>
					<li><a href="../advanced_init/complex_header.html">Complex headers and hidden columns</a></li>
					<li><a href="../advanced_init/dom_toolbar.html">Custom toolbar (element) around table</a></li>
					<li><a href="../advanced_init/highlight.html">Row highlighting with CSS</a></li>
					<li><a href="../advanced_init/row_grouping.html">Row grouping</a></li>
					<li><a href="../advanced_init/row_callback.html">Row callback</a></li>
					<li><a href="../advanced_init/footer_callback.html">Footer callback</a></li>
					<li><a href="../advanced_init/sorting_control.html">Control sorting direction of columns</a></li>
					<li><a href="../advanced_init/language_file.html">Change language information from a file (internationalisation)</a></li>
					<li><a href="../advanced_init/defaults.html">Setting defaults</a></li>
					<li><a href="../advanced_init/localstorage.html">State saving with localStorage</a></li>
					<li><a href="../advanced_init/dt_events.html">Custom events</a></li>
				</ul>
				
				<h2>API</h2>
				<ul>
					<li><a href="../api/add_row.html">Dynamically add a new row</a></li>
					<li><a href="../api/multi_filter.html">Individual column filtering (using "input" elements)</a></li>
					<li><a href="../api/multi_filter_select.html">Individual column filtering (using "select" elements)</a></li>
					<li><a href="../api/highlight.html">Highlight rows and columns</a></li>
					<li><a href="../api/row_details.html">Show and hide details about a particular record</a></li>
					<li><a href="../api/select_row.html">User selectable rows (multiple rows)</a></li>
					<li><a href="../api/select_single_row.html">User selectable rows (single row) and delete rows</a></li>
					<li><a href="../api/editable.html">Editable rows (with jEditable)</a></li>
					<li><a href="../api/form.html">Submit form with elements in table</a></li>
					<li><a href="../api/counter_column.html">Index column (static number column)</a></li>
					<li><a href="../api/show_hide.html">Show and hide columns dynamically</a></li>
					<li><a href="../api/api_in_init.html">API function use in initialisation object (callback)</a></li>
					<li><a href="../api/tabs_and_scrolling.html">DataTables scrolling and tabs</a></li>
					<li><a href="../api/regex.html">Regular expression filtering</a></li>
				</ul>
			</div>
			
			<div class="demo_links">
				<h2>Data sources</h2>
				<ul>
					<li><a href="../data_sources/dom.html">DOM</a></li>
					<li><a href="../data_sources/js_array.html">Javascript array</a></li>
					<li><a href="../data_sources/ajax.html">Ajax source</a></li>
					<li><a href="../data_sources/server_side.html">Server side processing</a></li>
				</ul>
				
				<h2>Server-side processing</h2>
				<ul>
					<li><a href="../server_side/server_side.html">Obtain server-side data</a></li>
					<li><a href="../server_side/custom_vars.html">Add extra HTTP variables</a></li>
					<li><a href="../server_side/post.html">Use HTTP POST</a></li>
					<li><a href="../server_side/ids.html">Automatic addition of IDs and classes to rows</a></li>
					<li><a href="../server_side/object_data.html">Reading table data from objects</a></li>
					<li><a href="../server_side/row_details.html">Show and hide details about a particular record</a></li>
					<li><a href="../server_side/select_rows.html">User selectable rows (multiple rows)</a></li>
					<li><a href="../server_side/jsonp.html">JSONP for a cross domain data source</a></li>
					<li><a href="../server_side/editable.html">jEditable integration with DataTables</a></li>
					<li><a href="../server_side/defer_loading.html">Deferred loading of Ajax data</a></li>
					<li><a href="../server_side/pipeline.html">Pipelining data (reduce Ajax calls for paging)</a></li>
				</ul>
				
				<h2>Ajax data source</h2>
				<ul>
					<li><a href="../ajax/ajax.html">Ajax sourced data (array of arrays)</a></li>
					<li><a href="../ajax/objects.html">Ajax sourced data (array of objects)</a></li>
					<li><a href="../ajax/defer_render.html">Deferred DOM creation for extra speed</a></li>
					<li><a href="../ajax/null_data_source.html">Empty data source columns</a></li>
					<li><a href="../ajax/custom_data_property.html">Use a data source other than aaData (the default)</a></li>
					<li><a href="../ajax/objects_subarrays.html">Read column data from sub-arrays</a></li>
					<li><a href="../ajax/deep.html">Read column data from deeply nested properties</a></li>
				</ul>
				
				<h2>Plug-ins</h2>
				<ul>
					<li><a href="../plug-ins/plugin_api.html">Add custom API functions</a></li>
					<li><a href="../plug-ins/sorting_plugin.html">Sorting and automatic type detection</a></li>
					<li><a href="../plug-ins/sorting_sType.html">Sorting without automatic type detection</a></li>
					<li><a href="../plug-ins/paging_plugin.html">Custom pagination controls</a></li>
					<li><a href="../plug-ins/range_filtering.html">Range filtering / custom filtering</a></li>
					<li><a href="../plug-ins/dom_sort.html">Live DOM sorting</a></li>
					<li><a href="../plug-ins/html_sort.html">Automatic HTML type detection</a></li>
				</ul>
			</div>
			
			
			<div id="footer" class="clear" style="text-align:center;">
				<p>
					Please refer to the <a href="http://www.datatables.net/usage">DataTables documentation</a> for full information about its API properties and methods.<br>
					Additionally, there are a wide range of <a href="http://www.datatables.net/extras">extras</a> and <a href="http://www.datatables.net/plug-ins">plug-ins</a> which extend the capabilities of DataTables.
				</p>
				
				<span style="font-size:10px;">
					DataTables designed and created by <a href="http://www.sprymedia.co.uk">Allan Jardine</a> &copy; 2007-2011<br>
					DataTables is dual licensed under the <a href="http://www.datatables.net/license_gpl2">GPL v2 license</a> or a <a href="http://www.datatables.net/license_bsd">BSD (3-point) license</a>.
				</span>
			</div>
		</div>
	</body>
</html>    