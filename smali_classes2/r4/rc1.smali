.class public final synthetic Lr4/rc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xc1;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lr4/rc1;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lr4/rc1;->a:Z

    check-cast p1, Lr4/vc1;

    invoke-interface {p1, v0}, Lr4/vc1;->M0(Z)V

    return-void
.end method
