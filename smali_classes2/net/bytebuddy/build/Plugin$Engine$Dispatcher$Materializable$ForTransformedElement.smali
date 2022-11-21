.class public Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForTransformedElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForTransformedElement"
.end annotation


# instance fields
.field private final dynamicType:Lnet/bytebuddy/dynamic/DynamicType;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/DynamicType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForTransformedElement;->dynamicType:Lnet/bytebuddy/dynamic/DynamicType;

    return-void
.end method


# virtual methods
.method public materialize(Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
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

    iget-object p3, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForTransformedElement;->dynamicType:Lnet/bytebuddy/dynamic/DynamicType;

    invoke-interface {p3}, Lnet/bytebuddy/dynamic/DynamicType;->getAllTypes()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p3}, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;->store(Ljava/util/Map;)V

    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForTransformedElement;->dynamicType:Lnet/bytebuddy/dynamic/DynamicType;

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
