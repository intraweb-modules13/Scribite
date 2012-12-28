{adminheader}
<div class="z-admin-content-pagetitle">
    <img src="{$baseurl}modules/Scribite/plugins/CKEditor/images/logo.gif" height='22'>
    <h3>{gt text='CKEditor configuration'}</h3>
</div>

{form cssClass="z-form"}
{formvalidationsummary}
    <fieldset>
        <legend>{gt text='Settings'}</legend>
        <div class="z-formrow">
            {formlabel for="skin" __text="Skin"}
            {formdropdownlist id="skin" items=$skinlist}
        </div>
        <div class="z-formrow">
            {formlabel for="uicolor" __text="Editor UI color"}
            {formtextinput id="uicolor" size="40" maxLength="150" text="#D3D3D3"}
            <em class="z-formnote z-sub">{gt text="Any hexadecimal color can be used. Default: #D3D3D3"}</em>
        </div>
        <div class="z-formrow">
            {formlabel for="barmode" __text="Toolbar"}
            {formdropdownlist id="barmode" items=$barmodelist}
            <em class="z-formnote z-sub">{gt text="All but Full and Basic toolbars have to be defined in the custom config file (if used)."}</em>
            <em class="z-formnote z-sub">{gt text="To specify different toolbar for particular module use an override."}</em>
        </div>
        <div class="z-formrow">
            {formlabel for="customconfigfile" __text="Editor custom config file"}
            {formtextinput id="customconfigfile" size="40" maxLength="150"}
            <em class="z-formnote z-sub">{gt text="Example: custconfig.js"}</em>
            <em class="z-formnote z-sub">{gt text="(located in 'modules/Scribite/plugins/CKEditor/vendor/ckeditor/')"}</em>
        </div>
        <div class="z-formrow">
            {formlabel for="extraplugins" __text="Editor extra plugins"}
            {formtextinput id="extraplugins" size="40" maxLength="150" text="autogrow,stylesheetparser,zikulapagebreak"}
            <em class="z-formnote z-sub">{gt text="Example: autogrow,stylesheetparser,zikulapagebreak"}</em>
        </div>
        <div class="z-formrow">
            {formlabel for="maxheight" __text="Editor maximum height for 'autogrow' plugin"}
            {formtextinput id="maxheight" size="4" maxLength="6" text="400px"}
            <em class="z-formnote z-sub">{gt text="px or % or leave empty for default/resize"}</em>
        </div>
        <div class="z-formrow">
            {formlabel for="style_editor" __text="Editor stylesheet"}
            {formtextinput id="style_editor" size="40" maxLength="150" text="modules/Scribite/plugins/CKEditor/style/content.css"}
            <em class="z-formnote z-sub">{gt text="You can try to enter your theme stylesheet here if you want."}</em>
            <em class="z-formnote z-sub">{gt text="In most cases, the editor fits to the theme then."}</em>
            <em class="z-formnote z-sub">{gt text="Example: themes/SeaBreeze/style/style.css"}</em>
        </div>
        <div class="z-formrow">
            {formlabel for="filemanagerpath" __text="Path to filemanager"}
            {formtextinput id="filemanagerpath" size="40" maxLength="150"}
            <em class="z-formnote z-sub">{gt text="Used to upload and select images or other files. Supported: CKFinder and KCFinder."}</em>
            <em class="z-formnote z-sub">{gt text="Example paths: utils/ckfinder or utils/kcfinder (rights to execute php)"}</em>
        </div>
    </fieldset>
    <div class="z-buttons z-formbuttons">
        {formbutton class="z-bt-ok" commandName="save" __text="Save"}
        {formbutton class="z-bt-cancel" commandName="cancel" __text="Cancel"}
    </div>
{/form}
{adminfooter}