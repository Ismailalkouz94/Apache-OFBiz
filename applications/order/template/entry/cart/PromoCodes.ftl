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

<#if shoppingCart.getOrderType() == "SALES_ORDER">
<article class="col-sm-12 col-md-12 col-lg-6 sortable-grid ui-sortable">
<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-8" data-widget-editbutton="false">
<header>
<h2>&nbsp;${uiLabelMap.OrderPromotionCouponCodes}</h2>
</header>
<div role="content">
<div class="screenlet">
    <div class="screenlet-body">
      <div>
        <form method="post" action="<@ofbizUrl>addpromocode<#if requestAttributes._CURRENT_VIEW_?has_content>/${requestAttributes._CURRENT_VIEW_}</#if></@ofbizUrl>" name="addpromocodeform" style="margin: 0;">
          <input type="text" size="15" name="productPromoCodeId" value="" />
          <input type="submit" class="btn btn-primary" value="${uiLabelMap.OrderAddCode}" /><br/><br/>
          <#assign productPromoCodeIds = (shoppingCart.getProductPromoCodesEntered())!>
          <#if productPromoCodeIds?has_content>
            ${uiLabelMap.OrderEnteredPromoCodes}:
            <#list productPromoCodeIds as productPromoCodeId>
              ${productPromoCodeId}
            </#list>
          </#if>
        </form>
      </div>
    </div>
</div>
</div>
</div>
</article>
</#if>
</div>
