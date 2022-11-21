.class public final synthetic Lr4/kt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xc1;


# instance fields
.field public final a:Lr4/rs2;


# direct methods
.method public constructor <init>(Lr4/rs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/kt2;->a:Lr4/rs2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lr4/kt2;->a:Lr4/rs2;

    check-cast p1, Lr4/nt2;

    invoke-virtual {v0}, Lr4/rs2;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lr4/rs2;->b()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lr4/gt2;

    invoke-interface {p1, v1, v0}, Lr4/nt2;->a(Lr4/gt2;Ljava/lang/String;)V

    return-void
.end method
