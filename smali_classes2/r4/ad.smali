.class public final Lr4/ad;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/bd;


# direct methods
.method public constructor <init>(Lr4/bd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lr4/ad;->a:Lr4/bd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lr4/ad;->a:Lr4/bd;

    invoke-virtual {v0, p1}, Lr4/bd;->s(Landroid/os/Message;)V

    return-void
.end method
