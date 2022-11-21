.class public final Lr4/ln1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/b20;


# instance fields
.field public final synthetic a:Lr4/mn1;


# direct methods
.method public constructor <init>(Lr4/mn1;)V
    .locals 0

    iput-object p1, p0, Lr4/ln1;->a:Lr4/mn1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza()V
    .locals 2

    iget-object v0, p0, Lr4/ln1;->a:Lr4/mn1;

    invoke-static {v0}, Lr4/mn1;->g7(Lr4/mn1;)Lr4/zi1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/ln1;->a:Lr4/mn1;

    invoke-static {v0}, Lr4/mn1;->g7(Lr4/mn1;)Lr4/zi1;

    move-result-object v0

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lr4/zi1;->A(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
