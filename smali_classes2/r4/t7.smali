.class public final synthetic Lr4/t7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/x7;


# direct methods
.method public constructor <init>(Lr4/x7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/t7;->a:Lr4/x7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/t7;->a:Lr4/x7;

    invoke-static {v0}, Lr4/x7;->f(Lr4/x7;)V

    return-void
.end method
