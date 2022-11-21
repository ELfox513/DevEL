.class public final synthetic Lr4/hn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/tn0;

.field public final b:I


# direct methods
.method public constructor <init>(Lr4/tn0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/hn0;->a:Lr4/tn0;

    iput p2, p0, Lr4/hn0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/hn0;->a:Lr4/tn0;

    iget v1, p0, Lr4/hn0;->b:I

    invoke-virtual {v0, v1}, Lr4/tn0;->M(I)V

    return-void
.end method
