.class public final synthetic Lr4/y80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/p90;

.field public final b:Lr4/o90;

.field public final d:Lr4/j80;


# direct methods
.method public constructor <init>(Lr4/p90;Lr4/o90;Lr4/j80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/y80;->a:Lr4/p90;

    iput-object p2, p0, Lr4/y80;->b:Lr4/o90;

    iput-object p3, p0, Lr4/y80;->d:Lr4/j80;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/y80;->a:Lr4/p90;

    iget-object v1, p0, Lr4/y80;->b:Lr4/o90;

    iget-object v2, p0, Lr4/y80;->d:Lr4/j80;

    invoke-virtual {v0, v1, v2}, Lr4/p90;->j(Lr4/o90;Lr4/j80;)V

    return-void
.end method
