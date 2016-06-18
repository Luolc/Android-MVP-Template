<?xml version="1.0"?>
<recipe>
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/src/app_package/MvpActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="root/src/app_package/MvpContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${contractClass}.java" />
    <instantiate from="root/src/app_package/MvpFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.java" />
    <instantiate from="root/src/app_package/MvpPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterClass}.java" />
    <instantiate from="root/res/layout/mvp_activity.xml.ftl"
        		   to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
    <instantiate from="root/res/layout/mvp_content_fragment.xml.ftl"
        		   to="${escapeXmlAttribute(resOut)}/layout/${contentLayoutName}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
