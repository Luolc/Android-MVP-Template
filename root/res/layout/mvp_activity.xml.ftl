<?xml version="1.0" encoding="utf-8"?>
<android.support.v4.widget.DrawerLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:fitsSystemWindows="true"
    tools:context="${relativePackage}.${activityClass}">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">

        <android.support.design.widget.AppBarLayout
            android:layout_height="wrap_content"
            android:layout_width="match_parent"
            android:theme="@style/AppTheme.AppBarOverlay">

            <android.support.v7.widget.Toolbar
                android:id="@+id/toolbar"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:minHeight="?attr/actionBarSize"
                android:background="?attr/colorPrimary"
                app:popupTheme="@style/AppTheme.PopupOverlay" />
        </android.support.design.widget.AppBarLayout>

        <android.support.design.widget.CoordinatorLayout
            android:id="@+id/coordinatorLayout"
            android:layout_width="match_parent"
            android:layout_height="match_parent">

            <FrameLayout
                app:layout_behavior="@string/appbar_scrolling_view_behavior"
                android:id="@+id/contentFrame"
                android:layout_width="match_parent"
                android:layout_height="match_parent"/>

            <android.support.design.widget.FloatingActionButton
                android:id="@+id/fab"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_margin="@dimen/fab_margin"
                app:fabSize="normal"
                app:layout_anchor="@id/contentFrame"
                app:layout_anchorGravity="bottom|right|end" />
        </android.support.design.widget.CoordinatorLayout>
    </LinearLayout>
</android.support.v4.widget.DrawerLayout>