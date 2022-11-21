.class public final synthetic Lr4/ny1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/h83;

.field public final b:Lr4/h83;


# direct methods
.method public constructor <init>(Lr4/h83;Lr4/h83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ny1;->a:Lr4/h83;

    iput-object p2, p0, Lr4/ny1;->b:Lr4/h83;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/ny1;->a:Lr4/h83;

    iget-object v1, p0, Lr4/ny1;->b:Lr4/h83;

    new-instance v2, Lr4/zy1;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/dz1;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/xy1;

    iget-object v3, v3, Lr4/xy1;->b:Lorg/json/JSONObject;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/xy1;

    iget-object v1, v1, Lr4/xy1;->a:Lr4/rg0;

    invoke-direct {v2, v0, v3, v1}, Lr4/zy1;-><init>(Lr4/dz1;Lorg/json/JSONObject;Lr4/rg0;)V

    return-object v2
.end method
