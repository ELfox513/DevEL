.class public interface abstract Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Materializable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForUnresolvedElement;,
        Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForFailedElement;,
        Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForRetainedElement;,
        Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForTransformedElement;
    }
.end annotation


# virtual methods
.method public abstract materialize(Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
