.class Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Unresolved;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Unresolved"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Unresolved;->a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;Lnet/bytebuddy/build/Plugin$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Unresolved;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Unresolved;->call()Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Unresolved;->a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;

    invoke-static {v0}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;->c(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;)Lnet/bytebuddy/build/Plugin$Engine$Listener;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Unresolved;->a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;

    invoke-static {v1}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;->f(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onUnresolved(Ljava/lang/String;)V

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForUnresolvedElement;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Unresolved;->a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;

    invoke-static {v1}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;->d(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;)Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Unresolved;->a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;

    invoke-static {v2}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;->f(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForUnresolvedElement;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Source$Element;Ljava/lang/String;)V

    return-object v0
.end method
