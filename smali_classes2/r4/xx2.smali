.class public final Lr4/xx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ay2;


# static fields
.field public static final a:Lr4/pb4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lr4/pb4;->A0()Lr4/pb4;

    move-result-object v0

    sput-object v0, Lr4/xx2;->a:Lr4/pb4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lr4/pb4;
    .locals 1

    sget-object v0, Lr4/xx2;->a:Lr4/pb4;

    return-object v0
.end method
