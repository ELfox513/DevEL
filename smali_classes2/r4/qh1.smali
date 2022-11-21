.class public final synthetic Lr4/qh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/vl1;

.field public final b:Lr4/gp;


# direct methods
.method public constructor <init>(Lr4/vl1;Lr4/gp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qh1;->a:Lr4/vl1;

    iput-object p2, p0, Lr4/qh1;->b:Lr4/gp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/qh1;->a:Lr4/vl1;

    iget-object v1, p0, Lr4/qh1;->b:Lr4/gp;

    invoke-virtual {v0, v1}, Lr4/vl1;->n(Lr4/gp;)V

    return-void
.end method
