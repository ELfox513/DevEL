.class Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;
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
    name = "Ignored"
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

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;->a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/build/Plugin$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;->call()Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;->a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;

    invoke-static {v0}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;->c(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;)Lnet/bytebuddy/build/Plugin$Engine$Listener;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;->a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;

    invoke-static {v2}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;->b(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/build/Plugin$Engine$Listener;->onIgnored(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;->a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;

    invoke-static {v0}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;->c(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;)Lnet/bytebuddy/build/Plugin$Engine$Listener;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0, v1}, Lnet/bytebuddy/build/Plugin$Engine$Listener;->onComplete(Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForRetainedElement;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;->a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;

    invoke-static {v1}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;->d(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;)Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForRetainedElement;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Source$Element;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;->a:Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;

    invoke-static {v1}, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;->c(Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor;)Lnet/bytebuddy/build/Plugin$Engine$Listener;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Default$Preprocessor$Ignored;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1, v2}, Lnet/bytebuddy/build/Plugin$Engine$Listener;->onComplete(Lnet/bytebuddy/description/type/TypeDescription;)V

    throw v0
.end method
