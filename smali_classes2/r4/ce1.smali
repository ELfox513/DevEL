.class public final synthetic Lr4/ce1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xc1;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ce1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr4/ce1;->a:Ljava/lang/String;

    check-cast p1, Lr4/ie1;

    invoke-interface {p1, v0}, Lr4/ie1;->u(Ljava/lang/String;)V

    return-void
.end method
