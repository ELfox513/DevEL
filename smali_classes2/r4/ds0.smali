.class public final synthetic Lr4/ds0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/js0;

.field public final b:Landroid/view/View;

.field public final d:Lr4/ej0;

.field public final k:I


# direct methods
.method public constructor <init>(Lr4/js0;Landroid/view/View;Lr4/ej0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ds0;->a:Lr4/js0;

    iput-object p2, p0, Lr4/ds0;->b:Landroid/view/View;

    iput-object p3, p0, Lr4/ds0;->d:Lr4/ej0;

    iput p4, p0, Lr4/ds0;->k:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lr4/ds0;->a:Lr4/js0;

    iget-object v1, p0, Lr4/ds0;->b:Landroid/view/View;

    iget-object v2, p0, Lr4/ds0;->d:Lr4/ej0;

    iget v3, p0, Lr4/ds0;->k:I

    invoke-virtual {v0, v1, v2, v3}, Lr4/js0;->p(Landroid/view/View;Lr4/ej0;I)V

    return-void
.end method
