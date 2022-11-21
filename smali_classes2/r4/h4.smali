.class public final synthetic Lr4/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/n4;

.field public final b:Lr4/v4;


# direct methods
.method public constructor <init>(Lr4/n4;Lr4/v4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/h4;->a:Lr4/n4;

    iput-object p2, p0, Lr4/h4;->b:Lr4/v4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/h4;->a:Lr4/n4;

    iget-object v1, p0, Lr4/h4;->b:Lr4/v4;

    invoke-virtual {v0, v1}, Lr4/n4;->k(Lr4/v4;)V

    return-void
.end method
