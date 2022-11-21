.class public final Lr4/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lr4/av;


# instance fields
.field public final a:Lr4/kz;

.field public final b:Lr4/lz;

.field public final c:Lr4/pz;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/av;

    invoke-direct {v0}, Lr4/av;-><init>()V

    sput-object v0, Lr4/av;->d:Lr4/av;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Lr4/kz;

    invoke-direct {v0}, Lr4/kz;-><init>()V

    new-instance v1, Lr4/lz;

    invoke-direct {v1}, Lr4/lz;-><init>()V

    new-instance v2, Lr4/pz;

    invoke-direct {v2}, Lr4/pz;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/av;->a:Lr4/kz;

    iput-object v1, p0, Lr4/av;->b:Lr4/lz;

    iput-object v2, p0, Lr4/av;->c:Lr4/pz;

    return-void
.end method

.method public static a()Lr4/lz;
    .locals 1

    sget-object v0, Lr4/av;->d:Lr4/av;

    iget-object v0, v0, Lr4/av;->b:Lr4/lz;

    return-object v0
.end method

.method public static b()Lr4/kz;
    .locals 1

    sget-object v0, Lr4/av;->d:Lr4/av;

    iget-object v0, v0, Lr4/av;->a:Lr4/kz;

    return-object v0
.end method

.method public static c()Lr4/pz;
    .locals 1

    sget-object v0, Lr4/av;->d:Lr4/av;

    iget-object v0, v0, Lr4/av;->c:Lr4/pz;

    return-object v0
.end method
