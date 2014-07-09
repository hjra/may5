// JavaScript Document
$(document).ready(function() {
   var reSortColors = function($table) {
     $('tbody tr:odd', $table)
       .removeClass('even').addClass('odd');
     $('tbody tr:even', $table)
       .removeClass('odd').addClass('even');
   };
   
   $('table.sortable').each(function() {
     var $table = $(this);
     reSortColors($table);
	 
     $('th', $table).each(function(column) {
       var $header = $(this);
       if ($header.is('.sorting')) {
         $header.addClass('clickable').hover(function() {
           $header.addClass('hover');
         }, function() {
           $header.removeClass('hover');
         }).click(function() {
			
			var sortDirection = 1;
           if ($header.is('.sorted-asc')) {
             sortDirection = -1;
           }
			//���� ���� 
			 
			 
           var rows = $table.find('tbody > tr').get();
           rows.sort(function(a, b) {
             var keyA = $(a).children('td').eq(column).text()
               .toUpperCase();
             var keyB = $(b).children('td').eq(column).text()
               .toUpperCase();
             if (keyA < keyB) return -sortDirection;
             if (keyA > keyB) return sortDirection;
             return 0;
           });
           $.each(rows, function(index, row) {
             $table.children('tbody').append(row);
           });
		
		$table.find('th').removeClass('sorted-asc')
             .removeClass('sorted-desc');
           if (sortDirection == 1) {
             $header.addClass('sorted-asc');
           }
           else {
             $header.addClass('sorted-desc');
           }
		   
		   
           reSortColors($table);
         });
       }
     });
   });
 });