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
<article class="col-sm-12 col-md-12 col-lg-6 sortable-grid ui-sortable">
<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
<header>
<h2>${productCategory.categoryName!}</h2>
</header>
<div role="content">
<#if productCategory?has_content>
        
        <form name="choosequickaddform" class="smart-form" method="post" action="<@ofbizUrl>quickadd</@ofbizUrl>" style='margin: 0;'>
          <select name='category_id'>
            <option value='${productCategory.productCategoryId}'>${productCategory.categoryName!}</option>
            <option value='${productCategory.productCategoryId}'>--</option>
            <#list quickAddCats as quickAddCatalogId>
              <#assign loopCategory = delegator.findOne("ProductCategory", Static["org.apache.ofbiz.base.util.UtilMisc"].toMap("productCategoryId", quickAddCatalogId), true)>
              <#if loopCategory?has_content>
                <option value='${quickAddCatalogId}'>${loopCategory.categoryName!}</option>
              </#if>
            </#list>
          </select>
          <div><a href="javascript:document.choosequickaddform.submit()" class="buttontext">${uiLabelMap.ProductChooseQuickAddCategory}</a></div>
        </form>
    <#if productCategory.categoryImageUrl?? || productCategory.longDescription??>
          <div>
            <#if productCategory.categoryImageUrl??>
              <img src="<@ofbizContentUrl>${productCategory.categoryImageUrl}</@ofbizContentUrl>" vspace="5" hspace="5" class="cssImgLarge" alt="" />
            </#if>
            ${productCategory.longDescription!}
          </div>
    </#if>
</#if>

<#if productCategoryMembers?? && 0 < productCategoryMembers?size>
  <form class="smart-form" method="post" action="<@ofbizUrl>addtocartbulk</@ofbizUrl>" name="bulkaddform">
      <input type='hidden' name='category_id' value='${categoryId}' />
      <div class="quickaddall">
        <a href="javascript:document.bulkaddform.submit()" class="btn btn-primary1">${uiLabelMap.OrderAddAllToCart}</a>
      </div>
      <div class="quickaddtable">
        <#list productCategoryMembers as productCategoryMember>
          <#assign product = productCategoryMember.getRelatedOne("Product", true)>
          <p>
              ${setRequestAttribute("optProductId", productCategoryMember.productId)}
              ${screens.render(quickaddsummaryScreen)}
          </p>
        </#list>
      </div>
      <div class="quickaddall">
        <a href="javascript:document.bulkaddform.submit()" class="btn btn-primary1">${uiLabelMap.OrderAddAllToCart}</a>
      </div>
  </form>
<#else>
  <label>${uiLabelMap.ProductNoProductsInThisCategory}.</label>
</#if>
</div>
</div>
</article>
</div>