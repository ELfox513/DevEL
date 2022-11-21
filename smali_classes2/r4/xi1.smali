.class public final synthetic Lr4/xi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/zi1;

.field public final b:Z


# direct methods
.method public constructor <init>(Lr4/zi1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/xi1;->a:Lr4/zi1;

    iput-boolean p2, p0, Lr4/xi1;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/xi1;->a:Lr4/zi1;

    iget-boolean v1, p0, Lr4/xi1;->b:Z

    invoke-virtual {v0, v1}, Lr4/zi1;->r(Z)V

    return-void
.end method
