.class public final synthetic Lr4/m22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/g31;


# instance fields
.field public final a:Lr4/cs0;


# direct methods
.method public constructor <init>(Lr4/cs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/m22;->a:Lr4/cs0;

    return-void
.end method

.method public static a(Lr4/cs0;)Lr4/g31;
    .locals 1

    new-instance v0, Lr4/m22;

    invoke-direct {v0, p0}, Lr4/m22;-><init>(Lr4/cs0;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lr4/lx;
    .locals 1

    iget-object v0, p0, Lr4/m22;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->f()Lr4/at0;

    move-result-object v0

    return-object v0
.end method
