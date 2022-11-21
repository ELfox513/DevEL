.class public final synthetic Lcom/esotericsoftware/kryo/serializers/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->a(I)[Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
