.class public final synthetic Lr4/pp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ek;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pp0;->a:[B

    return-void
.end method


# virtual methods
.method public final zza()Lr4/fk;
    .locals 2

    iget-object v0, p0, Lr4/pp0;->a:[B

    new-instance v1, Lr4/dk;

    invoke-direct {v1, v0}, Lr4/dk;-><init>([B)V

    return-object v1
.end method
