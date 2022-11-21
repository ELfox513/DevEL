.class public Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForRetainedElement;
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
    name = "ForRetainedElement"
.end annotation


# instance fields
.field private final element:Lnet/bytebuddy/build/Plugin$Engine$Source$Element;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Source$Element;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForRetainedElement;->element:Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

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

    iget-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable$ForRetainedElement;->element:Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    invoke-interface {p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;->retain(Lnet/bytebuddy/build/Plugin$Engine$Source$Element;)V

    return-void
.end method
