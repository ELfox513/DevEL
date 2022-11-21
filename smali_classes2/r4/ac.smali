.class public final Lr4/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ka;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lr4/xa;
    .locals 2

    new-instance v0, Lr4/dc;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Lr4/dc;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
