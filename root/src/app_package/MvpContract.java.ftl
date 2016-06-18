package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.BasePresenter;
import ${applicationPackage}.BaseView;
</#if>

public interface ${contractClass} {

    interface View extends BaseView<Presenter> {

    }

    interface Presenter extends BasePresenter {

    }
}
