<#ftl encoding="utf-8">
<link rel="stylesheet" href="/images/BusinessInnovation/css/searchBar.css">
<form  method="post"  class="search_bar">
        <table id="table1" cellspacing="5px" cellpadding="5%" align="center">
            <tr class="" data-toggle="dropdown">
                <td align="right" required="true">
		    <div class="search_dropdown" style="width:126px !important">
		     <span  class="required">Insurance Contract ID *</span>
			<select id="Ultra">
		        </select>
                   </div>
                </td>
            </tr>
        </table>
</form>


<div class="row">

                                                <!-- NEW WIDGET START -->
    <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div  class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
            <div role="content">
                <table id="jqgrid"></table>
                <div id="jqgridDiv"></div>
                </div>
            </div>
        </article>
        <!-- WIDGET END -->

    </div>



    <!--.....................seconed Grid .... for employee insurance family member...............................-->
        

                                        <!-- row -->
                <div class="row">

                                                <!-- NEW WIDGET START -->
                    <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div  class="jarviswidget jarviswidget-color-darken jarviswidget-sortable" id="wid-id-1" data-widget-editbutton="false" role="widget">
                        <div role="content">
                        <table id="jqgrid1"></table>
                        <div id="jqgridDiv1"></div>

                            </div>
                        </div>
                        </article>
                        <!-- WIDGET END -->

                    </div>


  


       <script>
            <#include "component://humanres/widget/forms/Insurance/InsuranceEmpDetails.js"/>
            </script>


