.class public final Lr4/h90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/zm0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/zm0<",
        "Lr4/q90;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/j90;


# direct methods
.method public constructor <init>(Lr4/j90;)V
    .locals 0

    iput-object p1, p0, Lr4/h90;->a:Lr4/j90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lr4/q90;

    const-string p1, "Releasing engine reference."

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/h90;->a:Lr4/j90;

    invoke-static {p1}, Lr4/j90;->f(Lr4/j90;)Lr4/o90;

    move-result-object p1

    invoke-virtual {p1}, Lr4/o90;->g()V

    return-void
.end method
