.class public final synthetic Lr4/rz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m13;


# static fields
.field public static final a:Lr4/m13;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/rz2;

    invoke-direct {v0}, Lr4/rz2;-><init>()V

    sput-object v0, Lr4/rz2;->a:Lr4/m13;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
