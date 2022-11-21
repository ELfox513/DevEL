.class public final synthetic Lr4/ch2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/dh2;


# direct methods
.method public constructor <init>(Lr4/dh2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ch2;->a:Lr4/dh2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lr4/eh2;

    invoke-direct {v1, v0}, Lr4/eh2;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
