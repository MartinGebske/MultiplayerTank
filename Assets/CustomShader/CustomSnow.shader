// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:Standard (Specular setup),iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32814,y:32981,varname:node_4013,prsc:2|diff-2794-OUT,spec-7899-OUT,gloss-2419-OUT,normal-7692-OUT;n:type:ShaderForge.SFN_NormalVector,id:9888,x:31064,y:32365,prsc:2,pt:True;n:type:ShaderForge.SFN_ComponentMask,id:6598,x:31235,y:32423,varname:node_6598,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-9888-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7798,x:31064,y:32604,varname:node_7798,prsc:2;n:type:ShaderForge.SFN_Normalize,id:884,x:31235,y:32622,cmnt:Y normalized,varname:node_884,prsc:2|IN-7798-Y;n:type:ShaderForge.SFN_Append,id:2076,x:31235,y:32785,cmnt:World XZ,varname:node_2076,prsc:2|A-7798-X,B-7798-Z;n:type:ShaderForge.SFN_Dot,id:2454,x:31495,y:32592,cmnt:positive y up,varname:node_2454,prsc:2,dt:0|A-6598-G,B-884-OUT;n:type:ShaderForge.SFN_Dot,id:9766,x:31495,y:32796,varname:node_9766,prsc:2,dt:0|A-6598-G,B-884-OUT;n:type:ShaderForge.SFN_If,id:9210,x:31690,y:32662,varname:node_9210,prsc:2|A-884-OUT,B-1126-OUT,GT-2454-OUT,EQ-9766-OUT,LT-9766-OUT;n:type:ShaderForge.SFN_Vector1,id:1126,x:31495,y:32728,varname:node_1126,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:7581,x:31804,y:32485,varname:node_7581,prsc:2|A-9210-OUT,B-9482-OUT;n:type:ShaderForge.SFN_Slider,id:9482,x:31468,y:32422,ptovrint:False,ptlb:Texture Map 2 Amount,ptin:_TextureMap2Amount,varname:node_9482,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Tex2d,id:9441,x:32191,y:32963,ptovrint:False,ptlb:Texture Map 2,ptin:_TextureMap2,varname:node_9441,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2076-OUT;n:type:ShaderForge.SFN_Append,id:7740,x:31977,y:32589,varname:node_7740,prsc:2|A-6598-R,B-7581-OUT,C-6598-B;n:type:ShaderForge.SFN_Multiply,id:8855,x:32178,y:32589,varname:node_8855,prsc:2|A-7740-OUT,B-7740-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:2794,x:32430,y:32589,varname:node_2794,prsc:2,chbt:0|M-8855-OUT,R-3048-RGB,G-9441-RGB,B-3048-RGB;n:type:ShaderForge.SFN_Tex2d,id:3048,x:32191,y:32780,ptovrint:False,ptlb:Texture Map,ptin:_TextureMap,varname:node_3048,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3401-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3720,x:30795,y:33211,varname:node_3720,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:8836,x:30972,y:33338,varname:node_8836,prsc:2|A-3720-UVOUT,B-4752-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4752,x:30795,y:33382,ptovrint:False,ptlb:UV Tiling,ptin:_UVTiling,varname:node_4752,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:4705,x:31147,y:33176,varname:node_4705,prsc:2,ntxv:0,isnm:False|UVIN-8836-OUT,TEX-2338-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:2338,x:30958,y:33139,ptovrint:False,ptlb:Height Map,ptin:_HeightMap,varname:node_2338,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:6527,x:31311,y:33219,varname:node_6527,prsc:2|IN-4705-R;n:type:ShaderForge.SFN_Vector1,id:1974,x:30795,y:33125,varname:node_1974,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Slider,id:8912,x:30748,y:33049,ptovrint:False,ptlb:Reverse Height Map,ptin:_ReverseHeightMap,varname:node_8912,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_If,id:1002,x:31508,y:33057,varname:node_1002,prsc:2|A-1974-OUT,B-8912-OUT,GT-4705-R,EQ-6527-OUT,LT-6527-OUT;n:type:ShaderForge.SFN_Slider,id:3947,x:31104,y:33487,ptovrint:False,ptlb:Offset Height,ptin:_OffsetHeight,varname:node_3947,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3957478,max:1;n:type:ShaderForge.SFN_RemapRange,id:1423,x:31489,y:33429,varname:node_1423,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.05|IN-3947-OUT;n:type:ShaderForge.SFN_Vector1,id:557,x:31489,y:33590,varname:node_557,prsc:2,v1:1;n:type:ShaderForge.SFN_Parallax,id:3401,x:31692,y:33264,varname:node_3401,prsc:2|UVIN-8836-OUT,HEI-1002-OUT,DEP-1423-OUT,REF-557-OUT;n:type:ShaderForge.SFN_Tex2d,id:9439,x:32191,y:33157,ptovrint:False,ptlb:Metallic Map,ptin:_MetallicMap,varname:node_9439,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3401-UVOUT;n:type:ShaderForge.SFN_Slider,id:5473,x:32034,y:33336,ptovrint:False,ptlb:Metallic Amount,ptin:_MetallicAmount,varname:node_5473,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:7899,x:32400,y:33174,varname:node_7899,prsc:2|A-9439-R,B-5473-OUT;n:type:ShaderForge.SFN_Tex2d,id:9012,x:32191,y:33430,ptovrint:False,ptlb:Roughness Map,ptin:_RoughnessMap,varname:node_9012,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3401-UVOUT;n:type:ShaderForge.SFN_Slider,id:6579,x:32034,y:33617,ptovrint:False,ptlb:Roughness Amount,ptin:_RoughnessAmount,varname:node_6579,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.445733,max:1;n:type:ShaderForge.SFN_Multiply,id:2419,x:32414,y:33484,varname:node_2419,prsc:2|A-9012-R,B-6579-OUT;n:type:ShaderForge.SFN_Tex2d,id:3749,x:31904,y:33760,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_3749,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-3401-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:1663,x:32112,y:33778,varname:node_1663,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3749-RGB;n:type:ShaderForge.SFN_Slider,id:3452,x:31955,y:33962,ptovrint:False,ptlb:Normal Amount,ptin:_NormalAmount,varname:node_3452,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:8048,x:32351,y:33821,varname:node_8048,prsc:2|A-1663-OUT,B-3452-OUT;n:type:ShaderForge.SFN_Vector1,id:5122,x:32351,y:33950,varname:node_5122,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:7692,x:32562,y:33854,varname:node_7692,prsc:2|A-8048-OUT,B-5122-OUT;proporder:9482-3048-9441-4752-2338-8912-3947-9439-5473-9012-6579-3749-3452;pass:END;sub:END;*/

Shader "Shader Forge/CustomSnow" {
    Properties {
        _TextureMap2Amount ("Texture Map 2 Amount", Range(0, 1)) = 1
        _TextureMap ("Texture Map", 2D) = "white" {}
        _TextureMap2 ("Texture Map 2", 2D) = "white" {}
        _UVTiling ("UV Tiling", Float ) = 0
        _HeightMap ("Height Map", 2D) = "white" {}
        _ReverseHeightMap ("Reverse Height Map", Range(0, 1)) = 0
        _OffsetHeight ("Offset Height", Range(0, 1)) = 0.3957478
        _MetallicMap ("Metallic Map", 2D) = "white" {}
        _MetallicAmount ("Metallic Amount", Range(0, 1)) = 0
        _RoughnessMap ("Roughness Map", 2D) = "white" {}
        _RoughnessAmount ("Roughness Amount", Range(0, 1)) = 0.445733
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _NormalAmount ("Normal Amount", Range(0, 1)) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _TextureMap2Amount;
            uniform sampler2D _TextureMap2; uniform float4 _TextureMap2_ST;
            uniform sampler2D _TextureMap; uniform float4 _TextureMap_ST;
            uniform float _UVTiling;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _ReverseHeightMap;
            uniform float _OffsetHeight;
            uniform sampler2D _MetallicMap; uniform float4 _MetallicMap_ST;
            uniform float _MetallicAmount;
            uniform sampler2D _RoughnessMap; uniform float4 _RoughnessMap_ST;
            uniform float _RoughnessAmount;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalAmount;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_8836 = (i.uv0*_UVTiling);
                float node_1002_if_leA = step(0.5,_ReverseHeightMap);
                float node_1002_if_leB = step(_ReverseHeightMap,0.5);
                float4 node_4705 = tex2D(_HeightMap,TRANSFORM_TEX(node_8836, _HeightMap));
                float node_6527 = (1.0 - node_4705.r);
                float2 node_3401 = ((_OffsetHeight*0.05+0.0)*(lerp((node_1002_if_leA*node_6527)+(node_1002_if_leB*node_4705.r),node_6527,node_1002_if_leA*node_1002_if_leB) - 1.0)*mul(tangentTransform, viewDirection).xy + node_8836);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_3401.rg, _NormalMap)));
                float3 normalLocal = float3((_NormalMap_var.rgb.rg*_NormalAmount),1.0);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _RoughnessMap_var = tex2D(_RoughnessMap,TRANSFORM_TEX(node_3401.rg, _RoughnessMap));
                float gloss = (_RoughnessMap_var.r*_RoughnessAmount);
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _MetallicMap_var = tex2D(_MetallicMap,TRANSFORM_TEX(node_3401.rg, _MetallicMap));
                float3 specularColor = (_MetallicMap_var.r*_MetallicAmount);
                float specularMonochrome;
                float3 node_6598 = normalDirection.rgb;
                float node_884 = normalize(i.posWorld.g); // Y normalized
                float node_9210_if_leA = step(node_884,0.0);
                float node_9210_if_leB = step(0.0,node_884);
                float node_9766 = dot(node_6598.g,node_884);
                float3 node_7740 = float3(node_6598.r,(lerp((node_9210_if_leA*node_9766)+(node_9210_if_leB*dot(node_6598.g,node_884)),node_9766,node_9210_if_leA*node_9210_if_leB)*_TextureMap2Amount),node_6598.b);
                float3 node_8855 = (node_7740*node_7740);
                float4 _TextureMap_var = tex2D(_TextureMap,TRANSFORM_TEX(node_3401.rg, _TextureMap));
                float2 node_2076 = float2(i.posWorld.r,i.posWorld.b); // World XZ
                float4 _TextureMap2_var = tex2D(_TextureMap2,TRANSFORM_TEX(node_2076, _TextureMap2));
                float3 diffuseColor = (node_8855.r*_TextureMap_var.rgb + node_8855.g*_TextureMap2_var.rgb + node_8855.b*_TextureMap_var.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _TextureMap2Amount;
            uniform sampler2D _TextureMap2; uniform float4 _TextureMap2_ST;
            uniform sampler2D _TextureMap; uniform float4 _TextureMap_ST;
            uniform float _UVTiling;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _ReverseHeightMap;
            uniform float _OffsetHeight;
            uniform sampler2D _MetallicMap; uniform float4 _MetallicMap_ST;
            uniform float _MetallicAmount;
            uniform sampler2D _RoughnessMap; uniform float4 _RoughnessMap_ST;
            uniform float _RoughnessAmount;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalAmount;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_8836 = (i.uv0*_UVTiling);
                float node_1002_if_leA = step(0.5,_ReverseHeightMap);
                float node_1002_if_leB = step(_ReverseHeightMap,0.5);
                float4 node_4705 = tex2D(_HeightMap,TRANSFORM_TEX(node_8836, _HeightMap));
                float node_6527 = (1.0 - node_4705.r);
                float2 node_3401 = ((_OffsetHeight*0.05+0.0)*(lerp((node_1002_if_leA*node_6527)+(node_1002_if_leB*node_4705.r),node_6527,node_1002_if_leA*node_1002_if_leB) - 1.0)*mul(tangentTransform, viewDirection).xy + node_8836);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_3401.rg, _NormalMap)));
                float3 normalLocal = float3((_NormalMap_var.rgb.rg*_NormalAmount),1.0);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _RoughnessMap_var = tex2D(_RoughnessMap,TRANSFORM_TEX(node_3401.rg, _RoughnessMap));
                float gloss = (_RoughnessMap_var.r*_RoughnessAmount);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _MetallicMap_var = tex2D(_MetallicMap,TRANSFORM_TEX(node_3401.rg, _MetallicMap));
                float3 specularColor = (_MetallicMap_var.r*_MetallicAmount);
                float specularMonochrome;
                float3 node_6598 = normalDirection.rgb;
                float node_884 = normalize(i.posWorld.g); // Y normalized
                float node_9210_if_leA = step(node_884,0.0);
                float node_9210_if_leB = step(0.0,node_884);
                float node_9766 = dot(node_6598.g,node_884);
                float3 node_7740 = float3(node_6598.r,(lerp((node_9210_if_leA*node_9766)+(node_9210_if_leB*dot(node_6598.g,node_884)),node_9766,node_9210_if_leA*node_9210_if_leB)*_TextureMap2Amount),node_6598.b);
                float3 node_8855 = (node_7740*node_7740);
                float4 _TextureMap_var = tex2D(_TextureMap,TRANSFORM_TEX(node_3401.rg, _TextureMap));
                float2 node_2076 = float2(i.posWorld.r,i.posWorld.b); // World XZ
                float4 _TextureMap2_var = tex2D(_TextureMap2,TRANSFORM_TEX(node_2076, _TextureMap2));
                float3 diffuseColor = (node_8855.r*_TextureMap_var.rgb + node_8855.g*_TextureMap2_var.rgb + node_8855.b*_TextureMap_var.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Standard (Specular setup)"
    CustomEditor "ShaderForgeMaterialInspector"
}
