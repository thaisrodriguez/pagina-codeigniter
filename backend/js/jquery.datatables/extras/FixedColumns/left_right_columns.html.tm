�H  condorthemes.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                /cleanzone/js/jquery.datatables/extras/FixedColumns/left_right_columns.html                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     C:/Users/User/Desktop/clean/test/condorthemes.com/cleanzone/js/jquery.datatables/extras/FixedColumns/left_right_columns.html elayed                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             condorthemes.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                /cleanzone/js/jquery.datatables/extras/FixedColumns/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                C:\Users\User\AppData\Local\Temp\httrack_temporaryGzipFile_818                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x       �+S    ����            �����������������                          h�        �G      OK                                                                              text/html                                                                                                                       gzip                                                            ��    �G          ����   ���}                                                                                                                                       Tue, 11 Feb 2014 01:14:44 GMT                                                                                                                                                                                                                                                                                                                                                                                                         Mozilla/4.5 (compatible; HTTrack 3.0x; Windows 98)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              es, en, *                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               �+S                          ���������                                                                                                                                                                                                                                                                                    �G  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<link rel="shortcut icon" type="image/ico" href="http://www.sprymedia.co.uk/media/images/favicon.ico">
		
		<title>FixedColumns example</title>
		<style type="text/css" title="currentStyle">
			@import "../../media/css/demo_page.css";
			@import "../../media/css/demo_table.css";
			td.indexLeft { background-color: white; border-right: 1px solid black; }
			td.indexRight { background-color: white; border-left: 1px solid black; }
			div.DTFC_LeftHeadWrapper th,
			div.DTFC_RightHeadWrapper th {
				border-bottom: 1px solid white !important;
			}
			div.DTFC_LeftFootWrapper th,
			div.DTFC_RightFootWrapper th {
				border-top: 1px solid white !important;
			}
		</style>
		<script type="text/javascript" charset="utf-8" src="../../media/js/jquery.js"></script>
		<script type="text/javascript" charset="utf-8" src="../../media/js/jquery.dataTables.js"></script>
		<script type="text/javascript" charset="utf-8" src="media/js/FixedColumns.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready( function () {
				var oTable = $('#example').dataTable( {
					"sScrollX": "100%",
					"sScrollXInner": "150%",
					"bScrollCollapse": true,
					"fnDrawCallback": function ( oSettings ) {
						/* Need to redo the counters if filtered or sorted */
						if ( oSettings.bSorted || oSettings.bFiltered ) {
							for ( var i=0, iLen=oSettings.aiDisplay.length ; i<iLen ; i++ ) {
								this.fnUpdate( i+1, oSettings.aiDisplay[i], 0, false, false );
								this.fnUpdate( i+1, oSettings.aiDisplay[i], 6, false, false );
							}
						}
					},
					"aoColumnDefs": [
						{ "bSortable": false, "sClass": "indexLeft", "aTargets": [ 0 ] },
						{ "bSortable": false, "sClass": "indexRight", "aTargets": [ -1 ] }
					],
					"aaSorting": [[ 1, 'asc' ]]
				} );
				
				new FixedColumns( oTable, {
					"iLeftColumns": 1,
					"iRightColumns": 1
				} );
			} );
		</script>
	</head>
	<body id="dt_example">
		<div id="container">
			<div class="full_width big">
				FixedColumns example - left and right columns fixed
			</div>
			
			<h1>Preamble</h1>
			<p>FixedColumns allows columns to be fixed from both the left and right hand sides of the table. Fixing right hand-side columns is done by using the <i>iRightColumns</i> initialisation parameter, which works just the same as <i>iLeftColumns</i> does for the left side of the table. This example shows both the left and right columns being fixed in place, and a bit of initialisation of DataTables to provide index columns.</p>
			
			<h1>Live example</h1>
			<div id="demo">
<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
	<thead>
		<tr>
			<th width="3%">&nbsp;</th>
			<th>Rendering engine</th>
			<th>Browser</th>
			<th>Platform(s)</th>
			<th>Engine version</th>
			<th>CSS grade</th>
			<th width="3%">&nbsp;</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<th width="3%">&nbsp;</th>
			<th>Rendering engine</th>
			<th>Browser</th>
			<th>Platform(s)</th>
			<th>Engine version</th>
			<th>CSS grade</th>
			<th width="3%">&nbsp;</th>
		</tr>
	</tfoot>
	<tbody>
		<tr class="gradeX">
			<td class="center">1</td>
			<td>Trident</td>
			<td>Internet
				 Explorer 4.0</td>
			<td>Win 95+</td>
			<td class="center">4</td>
			<td class="center">X</td>
			<td class="center">1</td>
		</tr>
		<tr class="gradeC">
			<td class="center">2</td>
			<td>Trident</td>
			<td>Internet
				 Explorer 5.0</td>
			<td>Win 95+</td>
			<td class="center">5</td>
			<td class="center">C</td>
			<td class="center">2</td>
		</tr>
		<tr class="gradeA">
			<td class="center">3</td>
			<td>Trident</td>
			<td>Internet
				 Explorer 5.5</td>
			<td>Win 95+</td>
			<td class="center">5.5</td>
			<td class="center">A</td>
			<td class="center">3</td>
		</tr>
		<tr class="gradeA">
			<td class="center">4</td>
			<td>Trident</td>
			<td>Internet
				 Explorer 6</td>
			<td>Win 98+</td>
			<td class="center">6</td>
			<td class="center">A</td>
			<td class="center">4</td>
		</tr>
		<tr class="gradeA">
			<td class="center">5</td>
			<td>Trident</td>
			<td>Internet Explorer 7</td>
			<td>Win XP SP2+</td>
			<td class="center">7</td>
			<td class="center">A</td>
			<td class="center">5</td>
		</tr>
		<tr class="gradeA">
			<td class="center">6</td>
			<td>Trident</td>
			<td>AOL browser (AOL desktop)</td>
			<td>Win XP</td>
			<td class="center">6</td>
			<td class="center">A</td>
			<td class="center">6</td>
		</tr>
		<tr class="gradeA">
			<td class="center">7</td>
			<td>Gecko</td>
			<td>Firefox 1.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.7</td>
			<td class="center">A</td>
			<td class="center">7</td>
		</tr>
		<tr class="gradeA">
			<td class="center">8</td>
			<td>Gecko</td>
			<td>Firefox 1.5</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
			<td class="center">8</td>
		</tr>
		<tr class="gradeA">
			<td class="center">9</td>
			<td>Gecko</td>
			<td>Firefox 2.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
			<td class="center">9</td>
		</tr>
		<tr class="gradeA">
			<td class="center">10</td>
			<td>Gecko</td>
			<td>Firefox 3.0</td>
			<td>Win 2k+ / OSX.3+</td>
			<td class="center">1.9</td>
			<td class="center">A</td>
			<td class="center">10</td>
		</tr>
		<tr class="gradeA">
			<td class="center">11</td>
			<td>Gecko</td>
			<td>Camino 1.0</td>
			<td>OSX.2+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
			<td class="center">11</td>
		</tr>
		<tr class="gradeA">
			<td class="center">12</td>
			<td>Gecko</td>
			<td>Camino 1.5</td>
			<td>OSX.3+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
			<td class="center">12</td>
		</tr>
		<tr class="gradeA">
			<td class="center">13</td>
			<td>Gecko</td>
			<td>Netscape 7.2</td>
			<td>Win 95+ / Mac OS 8.6-9.2</td>
			<td class="center">1.7</td>
			<td class="center">A</td>
			<td class="center">13</td>
		</tr>
		<tr class="gradeA">
			<td class="center">14</td>
			<td>Gecko</td>
			<td>Netscape Browser 8</td>
			<td>Win 98SE+</td>
			<td class="center">1.7</td>
			<td class="center">A</td>
			<td class="center">14</td>
		</tr>
		<tr class="gradeA">
			<td class="center">15</td>
			<td>Gecko</td>
			<td>Netscape Navigator 9</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
			<td class="center">15</td>
		</tr>
		<tr class="gradeA">
			<td class="center">16</td>
			<td>Gecko</td>
			<td>Mozilla 1.0</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1</td>
			<td class="center">A</td>
			<td class="center">16</td>
		</tr>
		<tr class="gradeA">
			<td class="center">17</td>
			<td>Gecko</td>
			<td>Mozilla 1.1</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.1</td>
			<td class="center">A</td>
			<td class="center">17</td>
		</tr>
		<tr class="gradeA">
			<td class="center">18</td>
			<td>Gecko</td>
			<td>Mozilla 1.2</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.2</td>
			<td class="center">A</td>
			<td class="center">18</td>
		</tr>
		<tr class="gradeA">
			<td class="center">19</td>
			<td>Gecko</td>
			<td>Mozilla 1.3</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.3</td>
			<td class="center">A</td>
			<td class="center">19</td>
		</tr>
		<tr class="gradeA">
			<td class="center">20</td>
			<td>Gecko</td>
			<td>Mozilla 1.4</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.4</td>
			<td class="center">A</td>
			<td class="center">20</td>
		</tr>
		<tr class="gradeA">
			<td class="center">21</td>
			<td>Gecko</td>
			<td>Mozilla 1.5</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.5</td>
			<td class="center">A</td>
			<td class="center">21</td>
		</tr>
		<tr class="gradeA">
			<td class="center">22</td>
			<td>Gecko</td>
			<td>Mozilla 1.6</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.6</td>
			<td class="center">A</td>
			<td class="center">22</td>
		</tr>
		<tr class="gradeA">
			<td class="center">23</td>
			<td>Gecko</td>
			<td>Mozilla 1.7</td>
			<td>Win 98+ / OSX.1+</td>
			<td class="center">1.7</td>
			<td class="center">A</td>
			<td class="center">23</td>
		</tr>
		<tr class="gradeA">
			<td class="center">24</td>
			<td>Gecko</td>
			<td>Mozilla 1.8</td>
			<td>Win 98+ / OSX.1+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
			<td class="center">24</td>
		</tr>
		<tr class="gradeA">
			<td class="center">25</td>
			<td>Gecko</td>
			<td>Seamonkey 1.1</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
			<td class="center">25</td>
		</tr>
		<tr class="gradeA">
			<td class="center">26</td>
			<td>Gecko</td>
			<td>Epiphany 2.20</td>
			<td>Gnome</td>
			<td class="center">1.8</td>
			<td class="center">A</td>
			<td class="center">26</td>
		</tr>
		<tr class="gradeA">
			<td class="center">27</td>
			<td>Webkit</td>
			<td>Safari 1.2</td>
			<td>OSX.3</td>
			<td class="center">125.5</td>
			<td class="center">A</td>
			<td class="center">27</td>
		</tr>
		<tr class="gradeA">
			<td class="center">28</td>
			<td>Webkit</td>
			<td>Safari 1.3</td>
			<td>OSX.3</td>
			<td class="center">312.8</td>
			<td class="center">A</td>
			<td class="center">28</td>
		</tr>
		<tr class="gradeA">
			<td class="center">29</td>
			<td>Webkit</td>
			<td>Safari 2.0</td>
			<td>OSX.4+</td>
			<td class="center">419.3</td>
			<td class="center">A</td>
			<td class="center">29</td>
		</tr>
		<tr class="gradeA">
			<td class="center">30</td>
			<td>Webkit</td>
			<td>Safari 3.0</td>
			<td>OSX.4+</td>
			<td class="center">522.1</td>
			<td class="center">A</td>
			<td class="center">30</td>
		</tr>
		<tr class="gradeA">
			<td class="center">31</td>
			<td>Webkit</td>
			<td>OmniWeb 5.5</td>
			<td>OSX.4+</td>
			<td class="center">420</td>
			<td class="center">A</td>
			<td class="center">31</td>
		</tr>
		<tr class="gradeA">
			<td class="center">32</td>
			<td>Webkit</td>
			<td>iPod Touch / iPhone</td>
			<td>iPod</td>
			<td class="center">420.1</td>
			<td class="center">A</td>
			<td class="center">32</td>
		</tr>
		<tr class="gradeA">
			<td class="center">33</td>
			<td>Webkit</td>
			<td>S60</td>
			<td>S60</td>
			<td class="center">413</td>
			<td class="center">A</td>
			<td class="center">33</td>
		</tr>
		<tr class="gradeA">
			<td class="center">34</td>
			<td>Presto</td>
			<td>Opera 7.0</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">-</td>
			<td class="center">A</td>
			<td class="center">34</td>
		</tr>
		<tr class="gradeA">
			<td class="center">35</td>
			<td>Presto</td>
			<td>Opera 7.5</td>
			<td>Win 95+ / OSX.2+</td>
			<td class="center">-</td>
			<td class="center">A</td>
			<td class="center">35</td>
		</tr>
		<tr class="gradeA">
			<td class="center">36</td>
			<td>Presto</td>
			<td>Opera 8.0</td>
			<td>Win 95+ / OSX.2+</td>
			<td class="center">-</td>
			<td class="center">A</td>
			<td class="center">36</td>
		</tr>
		<tr class="gradeA">
			<td class="center">37</td>
			<td>Presto</td>
			<td>Opera 8.5</td>
			<td>Win 95+ / OSX.2+</td>
			<td class="center">-</td>
			<td class="center">A</td>
			<td class="center">37</td>
		</tr>
		<tr class="gradeA">
			<td class="center">38</td>
			<td>Presto</td>
			<td>Opera 9.0</td>
			<td>Win 95+ / OSX.3+</td>
			<td class="center">-</td>
			<td class="center">A</td>
			<td class="center">38</td>
		</tr>
		<tr class="gradeA">
			<td class="center">39</td>
			<td>Presto</td>
			<td>Opera 9.2</td>
			<td>Win 88+ / OSX.3+</td>
			<td class="center">-</td>
			<td class="center">A</td>
			<td class="center">39</td>
		</tr>
		<tr class="gradeA">
			<td class="center">40</td>
			<td>Presto</td>
			<td>Opera 9.5</td>
			<td>Win 88+ / OSX.3+</td>
			<td class="center">-</td>
			<td class="center">A</td>
			<td class="center">40</td>
		</tr>
		<tr class="gradeA">
			<td class="center">41</td>
			<td>Presto</td>
			<td>Opera for Wii</td>
			<td>Wii</td>
			<td class="center">-</td>
			<td class="center">A</td>
			<td class="center">41</td>
		</tr>
		<tr class="gradeA">
			<td class="center">42</td>
			<td>Presto</td>
			<td>Nokia N800</td>
			<td>N800</td>
			<td class="center">-</td>
			<td class="center">A</td>
			<td class="center">42</td>
		</tr>
		<tr class="gradeA">
			<td class="center">43</td>
			<td>Presto</td>
			<td>Nintendo DS browser</td>
			<td>Nintendo DS</td>
			<td class="center">8.5</td>
			<td class="center">C/A</td>
			<td class="center">43</td>
		</tr>
		<tr class="gradeC">
			<td class="center">44</td>
			<td>KHTML</td>
			<td>Konqureror 3.1</td>
			<td>KDE 3.1</td>
			<td class="center">3.1</td>
			<td class="center">C</td>
			<td class="center">44</td>
		</tr>
		<tr class="gradeA">
			<td class="center">45</td>
			<td>KHTML</td>
			<td>Konqureror 3.3</td>
			<td>KDE 3.3</td>
			<td class="center">3.3</td>
			<td class="center">A</td>
			<td class="center">45</td>
		</tr>
		<tr class="gradeA">
			<td class="center">46</td>
			<td>KHTML</td>
			<td>Konqureror 3.5</td>
			<td>KDE 3.5</td>
			<td class="center">3.5</td>
			<td class="center">A</td>
			<td class="center">46</td>
		</tr>
		<tr class="gradeX">
			<td class="center">47</td>
			<td>Tasman</td>
			<td>Internet Explorer 4.5</td>
			<td>Mac OS 8-9</td>
			<td class="center">-</td>
			<td class="center">X</td>
			<td class="center">47</td>
		</tr>
		<tr class="gradeC">
			<td class="center">48</td>
			<td>Tasman</td>
			<td>Internet Explorer 5.1</td>
			<td>Mac OS 7.6-9</td>
			<td class="center">1</td>
			<td class="center">C</td>
			<td class="center">48</td>
		</tr>
		<tr class="gradeC">
			<td class="center">49</td>
			<td>Tasman</td>
			<td>Internet Explorer 5.2</td>
			<td>Mac OS 8-X</td>
			<td class="center">1</td>
			<td class="center">C</td>
			<td class="center">49</td>
		</tr>
		<tr class="gradeA">
			<td class="center">50</td>
			<td>Misc</td>
			<td>NetFront 3.1</td>
			<td>Embedded devices</td>
			<td class="center">-</td>
			<td class="center">C</td>
			<td class="center">50</td>
		</tr>
		<tr class="gradeA">
			<td class="center">51</td>
			<td>Misc</td>
			<td>NetFront 3.4</td>
			<td>Embedded devices</td>
			<td class="center">-</td>
			<td class="center">A</td>
			<td class="center">51</td>
		</tr>
		<tr class="gradeX">
			<td class="center">52</td>
			<td>Misc</td>
			<td>Dillo 0.8</td>
			<td>Embedded devices</td>
			<td class="center">-</td>
			<td class="center">X</td>
			<td class="center">52</td>
		</tr>
		<tr class="gradeX">
			<td class="center">53</td>
			<td>Misc</td>
			<td>Links</td>
			<td>Text only</td>
			<td class="center">-</td>
			<td class="center">X</td>
			<td class="center">53</td>
		</tr>
		<tr class="gradeX">
			<td class="center">54</td>
			<td>Misc</td>
			<td>Lynx</td>
			<td>Text only</td>
			<td class="center">-</td>
			<td class="center">X</td>
			<td class="center">54</td>
		</tr>
		<tr class="gradeC">
			<td class="center">55</td>
			<td>Misc</td>
			<td>IE Mobile</td>
			<td>Windows Mobile 6</td>
			<td class="center">-</td>
			<td class="center">C</td>
			<td class="center">55</td>
		</tr>
		<tr class="gradeC">
			<td class="center">56</td>
			<td>Misc</td>
			<td>PSP browser</td>
			<td>PSP</td>
			<td class="center">-</td>
			<td class="center">C</td>
			<td class="center">56</td>
		</tr>
		<tr class="gradeU">
			<td class="center">57</td>
			<td>Other browsers</td>
			<td>All others</td>
			<td>-</td>
			<td class="center">-</td>
			<td class="center">U</td>
			<td class="center">57</td>
		</tr>
	</tbody>
</table>
			</div>
			<div class="spacer"></div>
			
			
			<h1>Initialisation code</h1>
			<pre>$(document).ready( function () {
	var oTable = $('#example').dataTable( {
		"sScrollX": "100%",
		"sScrollXInner": "150%",
		"bScrollCollapse": true,
		"fnDrawCallback": function ( oSettings ) {
			/* Need to redo the counters if filtered or sorted */
			if ( oSettings.bSorted || oSettings.bFiltered ) {
				for ( var i=0, iLen=oSettings.aiDisplay.length ; i&lt;iLen ; i++ ) {
					this.fnUpdate( i+1, oSettings.aiDisplay[i], 0, false, false );
					this.fnUpdate( i+1, oSettings.aiDisplay[i], 6, false, false );
				}
			}
		},
		"aoColumnDefs": [
			{ "bSortable": false, "sClass": "indexLeft", "aTargets": [ 0 ] },
			{ "bSortable": false, "sClass": "indexRight", "aTargets": [ -1 ] }
		],
		"aaSorting": [[ 1, 'asc' ]]
	} );
	
	new FixedColumns( oTable, {
		"iLeftColumns": 1,
		"iRightColumns": 1
	} );
} );</pre>


			<h1>Documentation</h1>
			<ul>
				<li><a href="http://datatables.net/extras/fixedcolumns">Usage</a></li>
				<li><a href="http://datatables.net/docs/FixedColumns">API / parameters</a></li>
			</ul>

			<h1>Basic examples</h1>
			<ul>
				<li><a href="index.html">Basic demo of FixedColumns with zero initialisation</a></li>
				<li><a href="left_right_columns.html">Fix the left and right columns in place</a></li>
				<li><a href="index_column.html">Index column attached to side of the table</a></li>
				<li><a href="x_y_scrolling.html">Index column, but with Y scrolling and no pagination</a></li>
				<li><a href="two_columns.html">Two columns fixed in place</a></li>
				<li><a href="right_column.html">Fix the right column in place</a></li>
				<li><a href="css_size.html">Speeding up row height matching with CSS</a></li>
				<li><a href="themed.html">jQuery UI themed table with FixedColumns</a></li>
			</ul>
			
			<h1>Advanced examples</h1>
			<ul>
				<li><a href="rowspan.html">Using ROWSPAN with FixedColumns</a></li>
				<li><a href="server-side-processing.html">Server-side processing with FixedColumns</a></li>
				<li><a href="col_filter.html">Individual column filtering</a></li>
				<li><a href="scale_fixed.html">Setting the fixed column width and resizing the table</a></li>
				<li><a href="scale_relative.html">Setting the fixed column width with relative sizing</a></li>
				<li><a href="row_grouping_height.html">Row grouping by grouping like rows in the fixed column</a></li>
				<li><a href="row_grouping.html">Row grouping by inserting a grouping row</a></li>
			<ul>
			
			
			<div id="footer" style="text-align:center;">
				<span style="font-size:10px;">
					FixedColumns and DataTables &copy; Allan Jardine 2011.<br>
				</span>
			</div>
		</div>
	</body>
</html>    