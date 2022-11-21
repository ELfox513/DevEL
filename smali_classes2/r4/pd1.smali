.class public final Lr4/pd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Ljava/util/Set<",
        "Lr4/ve1<",
        "Lr4/cx2;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/bd1;


# direct methods
.method public constructor <init>(Lr4/bd1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pd1;->a:Lr4/bd1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/pd1;->a:Lr4/bd1;

    invoke-virtual {v0}, Lr4/bd1;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
