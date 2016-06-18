package ${packageName};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;

<#if applicationPackage??>
import ${applicationPackage}.BaseActivity;
import ${applicationPackage}.R;
import ${applicationPackage}.util.ActivityUtils;

import static ${applicationPackage}.lib.Commons.checkNotNull;
</#if>

import butterknife.BindView;
import butterknife.ButterKnife;

public class ${activityClass} extends BaseActivity {

    @BindView(R.id.toolbar) Toolbar mToolbar;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});
        ButterKnife.bind(this);

        // Set up the toolbar
        setSupportActionBar(mToolbar);
        ActionBar actionBar = checkNotNull(getSupportActionBar());
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setDisplayShowHomeEnabled(true);

        ${fragmentClass} ${fragmentClass?uncap_first} = (${fragmentClass}) getSupportFragmentManager()
                .findFragmentById(R.id.contentFrame);
        if (${fragmentClass?uncap_first} == null) {
            ${fragmentClass?uncap_first} = ${fragmentClass}.newInstance();
            ActivityUtils.addFragmentToActivity(getSupportFragmentManager(),
                    ${fragmentClass?uncap_first}, R.id.contentFrame);
        }

        new ${presenterClass}(${fragmentClass?uncap_first});
    }

    @Override
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return true;
    }
}
