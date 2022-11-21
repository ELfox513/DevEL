.class public interface abstract Lcom/badlogic/gdx/backends/android/AndroidInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Input;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnGenericMotionListener;


# virtual methods
.method public abstract addGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
.end method

.method public abstract addKeyListener(Landroid/view/View$OnKeyListener;)V
.end method

.method public abstract onDreamingStarted()V
.end method

.method public abstract onDreamingStopped()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract processEvents()V
.end method

.method public abstract setKeyboardAvailable(Z)V
.end method
