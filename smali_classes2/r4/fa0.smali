.class public final Lr4/fa0;
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

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lr4/vm0;

.field public final synthetic d:Lr4/ia0;


# direct methods
.method public constructor <init>(Lr4/ia0;Lr4/j90;Ljava/lang/Object;Lr4/vm0;)V
    .locals 0

    iput-object p1, p0, Lr4/fa0;->d:Lr4/ia0;

    iput-object p2, p0, Lr4/fa0;->a:Lr4/j90;

    iput-object p3, p0, Lr4/fa0;->b:Ljava/lang/Object;

    iput-object p4, p0, Lr4/fa0;->c:Lr4/vm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lr4/q90;

    iget-object v0, p0, Lr4/fa0;->d:Lr4/ia0;

    iget-object v1, p0, Lr4/fa0;->a:Lr4/j90;

    iget-object v2, p0, Lr4/fa0;->b:Ljava/lang/Object;

    iget-object v3, p0, Lr4/fa0;->c:Lr4/vm0;

    invoke-static {v0, v1, p1, v2, v3}, Lr4/ia0;->d(Lr4/ia0;Lr4/j90;Lr4/q90;Ljava/lang/Object;Lr4/vm0;)V

    return-void
.end method
