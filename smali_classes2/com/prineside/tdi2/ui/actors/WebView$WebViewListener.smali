.class public interface abstract Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/actors/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebViewListener"
.end annotation


# virtual methods
.method public abstract modalLoadRequested(Ljava/lang/String;)V
.end method

.method public abstract urlLoadFinish(ZLjava/lang/String;Z)V
.end method

.method public abstract urlLoadStart(Lcom/badlogic/gdx/Net$HttpRequest;)V
.end method
