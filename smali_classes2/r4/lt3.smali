.class public final synthetic Lr4/lt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/ot3;

.field public final b:Lr4/pt3;

.field public final d:Lr4/ws3;

.field public final k:Lr4/ct3;

.field public final p:Ljava/io/IOException;

.field public final q:Z


# direct methods
.method public constructor <init>(Lr4/ot3;Lr4/pt3;Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lt3;->a:Lr4/ot3;

    iput-object p2, p0, Lr4/lt3;->b:Lr4/pt3;

    iput-object p3, p0, Lr4/lt3;->d:Lr4/ws3;

    iput-object p4, p0, Lr4/lt3;->k:Lr4/ct3;

    iput-object p5, p0, Lr4/lt3;->p:Ljava/io/IOException;

    iput-boolean p6, p0, Lr4/lt3;->q:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lr4/lt3;->a:Lr4/ot3;

    iget-object v1, p0, Lr4/lt3;->b:Lr4/pt3;

    iget-object v4, p0, Lr4/lt3;->d:Lr4/ws3;

    iget-object v5, p0, Lr4/lt3;->k:Lr4/ct3;

    iget-object v6, p0, Lr4/lt3;->p:Ljava/io/IOException;

    iget-boolean v7, p0, Lr4/lt3;->q:Z

    iget v2, v0, Lr4/ot3;->a:I

    iget-object v3, v0, Lr4/ot3;->b:Lr4/ft3;

    invoke-interface/range {v1 .. v7}, Lr4/pt3;->y(ILr4/ft3;Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V

    return-void
.end method
