.class public final synthetic Lr4/nr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/j7;


# instance fields
.field public final a:Lr4/sr0;


# direct methods
.method public constructor <init>(Lr4/sr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/nr0;->a:Lr4/sr0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Lr4/zy3;Lr4/wm1;Lr4/ha;Lr4/k8;)[Lr4/g7;
    .locals 6

    iget-object v0, p0, Lr4/nr0;->a:Lr4/sr0;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lr4/sr0;->h0(Landroid/os/Handler;Lr4/zy3;Lr4/wm1;Lr4/ha;Lr4/k8;)[Lr4/g7;

    move-result-object p1

    return-object p1
.end method
