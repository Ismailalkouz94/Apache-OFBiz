<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<div class="screenlet">
    <div class="screenlet-body">
        <table class="table table-bordered table-striped">
            <tr class="header-row">
                <th>${uiLabelMap.OrderOrderId}</th>
                <th>${uiLabelMap.FormFieldTitle_orderPickSheetPrintedDate}</th>
                <th>${uiLabelMap.ProductVerified}</th>
            </tr>
            <#if orders?has_content>
                <#list orders?sort_by("pickSheetPrintedDate") as order>
                    <tr>
                        <td><a href="/ordermgr/control/orderview?orderId=${order.orderId!}" class="buttontext" target="_blank">${order.orderId!}</a></td>
                        <td>${order.pickSheetPrintedDate!}</td>
                        <td><#if "Y" == order.isVerified>${uiLabelMap.CommonY}</#if></td>
                    </tr>
                </#list>
            <#else>
                <tr><td colspan="4"><div class="alert alert-info fade in">${uiLabelMap.OrderNoOrderFound}</div></td></tr>
            </#if>
        </table>
    </div>
</div>
