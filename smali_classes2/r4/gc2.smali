.class public final synthetic Lr4/gc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dg2;


# instance fields
.field public final a:Lr4/hc2;


# direct methods
.method public constructor <init>(Lr4/hc2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/gc2;->a:Lr4/hc2;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr4/gc2;->a:Lr4/hc2;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lr4/hc2;->a(Landroid/os/Bundle;)V

    return-void
.end method
