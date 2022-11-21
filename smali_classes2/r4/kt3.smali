.class public final synthetic Lr4/kt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/ot3;

.field public final b:Lr4/pt3;

.field public final d:Lr4/ws3;

.field public final k:Lr4/ct3;


# direct methods
.method public constructor <init>(Lr4/ot3;Lr4/pt3;Lr4/ws3;Lr4/ct3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/kt3;->a:Lr4/ot3;

    iput-object p2, p0, Lr4/kt3;->b:Lr4/pt3;

    iput-object p3, p0, Lr4/kt3;->d:Lr4/ws3;

    iput-object p4, p0, Lr4/kt3;->k:Lr4/ct3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lr4/kt3;->a:Lr4/ot3;

    iget-object v1, p0, Lr4/kt3;->b:Lr4/pt3;

    iget-object v2, p0, Lr4/kt3;->d:Lr4/ws3;

    iget-object v3, p0, Lr4/kt3;->k:Lr4/ct3;

    iget v4, v0, Lr4/ot3;->a:I

    iget-object v0, v0, Lr4/ot3;->b:Lr4/ft3;

    invoke-interface {v1, v4, v0, v2, v3}, Lr4/pt3;->k(ILr4/ft3;Lr4/ws3;Lr4/ct3;)V

    return-void
.end method
