.class public final synthetic Lr4/m90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/n90;

.field public final b:Lr4/j80;


# direct methods
.method public constructor <init>(Lr4/n90;Lr4/j80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/m90;->a:Lr4/n90;

    iput-object p2, p0, Lr4/m90;->b:Lr4/j80;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/m90;->b:Lr4/j80;

    sget-object v1, Lr4/t50;->o:Lr4/j60;

    const-string v2, "/result"

    invoke-interface {v0, v2, v1}, Lr4/q90;->U(Ljava/lang/String;Lr4/u50;)V

    invoke-interface {v0}, Lr4/j80;->j()V

    return-void
.end method
