.class public final Lr4/gh1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/j81;


# direct methods
.method public constructor <init>(Lr4/j81;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/gh1;->a:Lr4/j81;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/gh1;->a:Lr4/j81;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/j81;->e1(Landroid/content/Context;)V

    return-void
.end method
