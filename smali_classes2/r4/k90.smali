.class public final Lr4/k90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/zm0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/zm0<",
        "Lr4/j80;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/j90;


# direct methods
.method public constructor <init>(Lr4/o90;Lr4/j90;)V
    .locals 0

    iput-object p2, p0, Lr4/k90;->a:Lr4/j90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lr4/j80;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/k90;->a:Lr4/j90;

    invoke-interface {p1}, Lr4/j80;->i()Lr4/r90;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/cn0;->c(Ljava/lang/Object;)V

    return-void
.end method
