.class public final synthetic Lr4/p4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/y4;

.field public final b:Lr4/d7;


# direct methods
.method public constructor <init>(Lr4/y4;Lr4/d7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/p4;->a:Lr4/y4;

    iput-object p2, p0, Lr4/p4;->b:Lr4/d7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/p4;->b:Lr4/d7;

    invoke-static {v0}, Lr4/y4;->a0(Lr4/d7;)V

    return-void
.end method
