.class public final synthetic Lr4/zs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/at0;

.field public final b:I

.field public final d:I

.field public final k:Z

.field public final p:Z


# direct methods
.method public constructor <init>(Lr4/at0;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zs0;->a:Lr4/at0;

    iput p2, p0, Lr4/zs0;->b:I

    iput p3, p0, Lr4/zs0;->d:I

    iput-boolean p4, p0, Lr4/zs0;->k:Z

    iput-boolean p5, p0, Lr4/zs0;->p:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lr4/zs0;->a:Lr4/at0;

    iget v1, p0, Lr4/zs0;->b:I

    iget v2, p0, Lr4/zs0;->d:I

    iget-boolean v3, p0, Lr4/zs0;->k:Z

    iget-boolean v4, p0, Lr4/zs0;->p:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lr4/at0;->j7(IIZZ)V

    return-void
.end method
