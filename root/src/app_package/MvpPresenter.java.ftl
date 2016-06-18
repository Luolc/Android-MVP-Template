package ${packageName};

import android.support.annotation.NonNull;

import rx.subscriptions.CompositeSubscription;

<#if applicationPackage??>
import static ${applicationPackage}.lib.Commons.checkNotNull;
</#if>

public class ${presenterClass} implements ${contractClass}.Presenter {

    private CompositeSubscription mSubscriptions;

    @NonNull
    private final ${contractClass}.View m${activityPrefix}View;

    public ${presenterClass}(@NonNull ${contractClass}.View ${activityPrefix?uncap_first}View) {
        m${activityPrefix}View = checkNotNull(${activityPrefix?uncap_first}View);
        m${activityPrefix}View.setPresenter(this);
        mSubscriptions = new CompositeSubscription();
    }

    @Override
    public void subscribe() {

    }

    @Override
    public void unsubscribe() {
        mSubscriptions.clear();
    }
}
