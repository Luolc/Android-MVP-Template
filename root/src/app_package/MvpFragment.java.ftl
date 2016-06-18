package ${packageName};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.FloatingActionButton;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

<#if applicationPackage??>
import ${applicationPackage}.BaseViewFragment;
import ${applicationPackage}.R;

import static ${applicationPackage}.lib.Commons.checkNotNull;
</#if>

import butterknife.ButterKnife;

public class ${fragmentClass} extends BaseViewFragment<${contractClass}.Presenter>
        implements ${contractClass}.View {

    public static ${fragmentClass} newInstance() { return new ${fragmentClass}(); }

    public ${fragmentClass}() {}

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.${contentLayoutName}, container, false);
        mUnbinder = ButterKnife.bind(this, root);

        return root;
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);

        FloatingActionButton fab = ButterKnife.findById(getActivity(), R.id.fab);
        fab.setOnClickListener(v -> {});
    }
}
