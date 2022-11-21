.class public final synthetic Lr4/s32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/d81;


# instance fields
.field public final a:Lr4/cs0;


# direct methods
.method public constructor <init>(Lr4/cs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/s32;->a:Lr4/cs0;

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    iget-object v0, p0, Lr4/s32;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    invoke-interface {v0}, Lr4/st0;->h()V

    :cond_0
    return-void
.end method
