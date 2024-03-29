<?xml version="1.0" encoding="UTF-8"?>
<!--
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
<#if glAcctBalancesByCostCenter?has_content && glAccountCategories?has_content>
  <table class="table table-bordered table-striped table-condensed table-hover smart-form has-tickbox" cellspacing="0">
    <tr class="header-row">
      <th>${uiLabelMap.FormFieldTitle_glAccountId}</th>
      <th>${uiLabelMap.FormFieldTitle_accountCode}</th>
      <th>${uiLabelMap.FormFieldTitle_accountName}</th>
      <th>${uiLabelMap.FormFieldTitle_postedBalance} - (${currencyUomId})</th>
      <#list glAccountCategories as glAccountCategory>
        <th>${glAccountCategory.description!} - (${currencyUomId})</th>
      </#list>
    </tr>
    <#assign alt_row = false>
    <#list glAcctBalancesByCostCenter as glAcctBalanceByCostCenter>
        <tr <#if alt_row> class="alternate-row"</#if>>
          <td>${glAcctBalanceByCostCenter.glAccountId!}</td>
          <td>${glAcctBalanceByCostCenter.accountCode!}</td>
          <td>${glAcctBalanceByCostCenter.accountName!}</td>
          <td>${glAcctBalanceByCostCenter.balance!}</td>
          <#list glAccountCategories as glAccountCategory>
            <td>${(glAcctBalanceByCostCenter[glAccountCategory.glAccountCategoryId!]!)}</td>
          </#list>
          <#assign alt_row = !alt_row>
        </tr>
    </#list>
  </table>
<#else>
  <div class="alert alert-info fade in">${uiLabelMap.CommonNoRecordFound}</div>
</#if>
